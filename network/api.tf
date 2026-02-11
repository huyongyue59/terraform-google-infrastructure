resource "google_project_service" "compute" {
  project = "prj-goeiyaku-001"
  service = "compute.googleapis.com"
}