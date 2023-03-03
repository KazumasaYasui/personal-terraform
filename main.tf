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
