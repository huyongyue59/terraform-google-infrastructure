provider "google" {
  project = var.project_id
  region  = "asia-northeast1"
}

# Alias: Project A in Osaka
provider "google" {
  alias   = "osaka"
  project = var.project_id
  region  = "asia-northeast2"
}