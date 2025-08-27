terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.28.0"
    }
  }
}

provider "google" {
  project     = var.project_id
  region      = var.region
  credentials = file(var.path_to_gcp_service_account)
}

resource "google_cloud_run_v2_service" "chat-room-deployment" {
  name     = "chat-room-deployment"
  location = var.region
  ingress  = "INGRESS_TRAFFIC_ALL"
  template {
    containers {
      image = "docker.io/kiiru4reals/chat-room:latest"
      ports {
        name           = "http1"
        container_port = 8000
      }
      resources {
        limits = {
          cpu    = "1"
          memory = "512Mi"
        }
        startup_cpu_boost = false
        cpu_idle          = false
      }
    }
    scaling {
      min_instance_count = 0
      max_instance_count = 1

    }
    timeout                          = "60.0s"
    max_instance_request_concurrency = 5
    execution_environment            = "EXECUTION_ENVIRONMENT_GEN1"
  }
}

resource "google_cloud_run_v2_service_iam_member" "allow-public-access" {
  location = google_cloud_run_v2_service.chat-room-deployment.location
  name     = google_cloud_run_v2_service.chat-room-deployment.name
  role     = "roles/run.invoker"
  member   = "allUsers"

}

# Set up domain mapping manually
# data "google_project" "project_info" {}

# resource "google_" "chatroom-kiiru-maina-com" {
#   name     = "chatroom.kiirumaina.com"
#   location = google_cloud_run_v2_service.chat-room-deployment.location
#   metadata {
#     namespace = data.google_project.project_info.project_id
#   }
#   spec {
#     route_name = google_cloud_run_v2_service.chat-room-deployment.name
#   }
# }