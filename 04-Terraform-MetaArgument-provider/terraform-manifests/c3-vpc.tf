# Resource: VPC
resource "google_compute_network" "myvpc" {
  name = "vpc1"
  project = "gcplearn19"
  auto_create_subnetworks = false
  
  }

#Resource: Subnet1
resource "google_compute_subnetwork" "mysubnet1" {
  provider = google.us-central1
  name = "subnet1"
  ip_cidr_range = "10.128.0.0/20"
  network = google_compute_network.myvpc.id
}

resource "google_compute_subnetwork" "mysubnet2" {
  provider = google.europe-west1
  name = "mysubnet2"
  ip_cidr_range = "10.132.0.0/20"
  network = google_compute_network.myvpc.id
}