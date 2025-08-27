variable "project_id" {
  description = "Project ID for GCP project"
  type        = string
}

variable "region" {
  description = "Region for GCP project"
  type        = string
  default     = "us-central1"
}

variable "path_to_gcp_service_account" {
  description = "Path to the GCP service account credentials"
  type        = string
}