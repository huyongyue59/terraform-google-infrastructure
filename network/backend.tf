terraform {
  backend "gcs" {
    prefix  = "argocd"
  }
  required_version = ">= 1.3"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 6.19.0"
    }
  }
}