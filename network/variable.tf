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
