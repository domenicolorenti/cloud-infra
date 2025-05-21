provider "google" {
    credentials = file("gcp.json")
    project     = var.project_id
    region      = var.region
}