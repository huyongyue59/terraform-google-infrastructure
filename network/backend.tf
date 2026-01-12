terraform {
  backend "gcs" {
    bucket  = "your-unique-bucket-name"
    prefix  = var.feature_name
  }
  required_version = ">= 1.3"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 6.19.0"
    }
  }
}