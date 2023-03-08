provider "google" {
  credentials = var.GOOGLE_CREDENTIALS
  region      = var.region
  zone        = var.zone
  project     = var.project
}

resource "google_storage_bucket" "sample-bucket" {
  location = "ASIA-NORTHEAST1"
  name     = "kazumasa-yasui-sample-bucket"
}

locals {
  services = toset([
    "cloudresourcemanager.googleapis.com",
  ])

  roles = toset([
    "roles/storage.admin",
  ])
}

resource "google_project_service" "service" {
  for_each = local.services
  project  = var.project
  service  = each.value
}

resource "google_project_iam_member" "sample-project-role" {
  for_each = local.roles
  project  = var.project
  role     = each.value
  member   = "user:kazumasa.yasui39@gmail.com"
}
