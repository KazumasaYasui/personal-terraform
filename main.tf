provider "google" {
  credentials = var.GOOGLE_CREDENTIALS
  region      = var.region
  zone        = var.zone
  project     = var.project
}
