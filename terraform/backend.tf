terraform {

  backend "s3" {
    bucket  = "terraform-state-bucket-270420241723"
    key     = "global/gcp/terraform.tfstate"
    region  = "us-east-2"
    encrypt = true
  }
}