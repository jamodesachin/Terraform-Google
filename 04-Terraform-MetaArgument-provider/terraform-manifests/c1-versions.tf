#Terrafrom setting block
terraform {
  required_version = ">=1.8"
  required_providers {
    google = {
      source = "hashicorp/google"
      version = ">= 5.34.0"
    }
  }
}
#Terrafrom Provider: US-CENTRAL
provider "google" {
  project     = "gcplearn19"
  region      = "us-central1"
  alias = "us-central1"
}

provider "google" {
  project     = "gcplearn19"
  region      = "europe-west1"
  alias = "europe-west1"
}