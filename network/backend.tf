terraform {
  backend "gcs" {
    bucket  = "your-unique-bucket-name"
    prefix  = var.feature_name
  }
}