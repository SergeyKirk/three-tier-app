resource "google_compute_network" "three-tier-network" {
  name                    = var.vpc_name
  auto_create_subnetworks = var.auto_create_sub
}

resource "google_compute_subnetwork" "subnetwork_us" {
  ip_cidr_range = var.subnet_us_range
  name          = var.subnet_us_name
  region = var.region
  network       = google_compute_network.three-tier-network.name
}

