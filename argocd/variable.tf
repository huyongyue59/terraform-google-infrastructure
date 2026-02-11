variable "project_id" {
  type        = string
  description = "The GCP Project ID for Project A"
}

variable "region_tokyo" {
  type    = string
  default = "asia-northeast1"
}

variable "region_osaka" {
  type    = string
  default = "asia-northeast2"
}

variable "state_file_bucket" {
  type        = string
  description = "The GCS bucket name for Terraform state files"
}

variable "feature_name" {
  type = string
  description = "The feature name"
}