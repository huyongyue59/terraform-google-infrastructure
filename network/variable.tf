variable "project_id_a" {
  type        = string
  description = "The GCP Project ID for Project A"
}

variable "project_id_b" {
  type        = string
  description = "The GCP Project ID for Project B"
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