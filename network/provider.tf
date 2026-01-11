provider "google" {
  project = var.project_id_a
  region  = "asia-northeast1"
}

# Alias: Project A in Osaka
provider "google" {
  alias   = "osaka"
  project = var.project_id_a
  region  = "asia-northeast2"
}