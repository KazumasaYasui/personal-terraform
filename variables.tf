variable "GOOGLE_CREDENTIALS" {}

variable "region" {
  description = "GCP region"
  default     = "asia-northeast1"
}

variable "zone" {
  description = "GCP zone"
  default     = "asia-northeast1-a"
}

variable "project" {
  description = "GCP project"
  default     = "PersonalProject"
}