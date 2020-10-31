
variable "GOOGLE_CREDENTIALS" {}
variable "PROJECT_ID" {}

provider "google" {
  credentials = "${var.GOOGLE_CREDENTIALS}"
  project     = "${var.PROJECT_ID}"
  region      = "asia-northeast1"
  zone        = "asia-northeast1-a"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}