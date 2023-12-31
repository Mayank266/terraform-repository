terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.80.0"
    }
  }
}

provider "google" {
 project     = "${var.project_id}"
 region      = "${var.location}"
}
provider "google-beta" {
 project     = "${var.project_id}"
 region      = "${var.location}"
}
