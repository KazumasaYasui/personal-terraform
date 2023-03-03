terraform {
  cloud {
    organization = "kazumasa-yasui"

    workspaces {
      name = "personal-project"
    }
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.55.0"
    }
  }

  required_version = "~> 1.3.9"
}
