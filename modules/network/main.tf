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

resource "google_compute_firewall" "ssh" {
  name    = var.ssh_firewall_rule_name
  network = google_compute_network.three-tier-network.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "allow-vm" {
  name    = var.allow_ingress_firewall_rule_name
  network = google_compute_network.three-tier-network.name
  allow {
    protocol = "tcp"
    ports    = ["80"]
  }
  source_ranges = ["0.0.0.0/0"]
}