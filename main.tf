module "network" {
  source = "./modules/network"
  auto_create_sub = var.auto_create_sub
  vpc_name = var.vpc_name
  subnet_us_range = var.subnet_us_range
  subnet_us_name = var.subnet_us_name
  region = var.region
}

module "gke" {
  source = "./modules/gke"
  cluster_name = var.cluster_name
  cluster_node_count = var.cluster_node_count
  cluster_version = var.cluster_network
  enable_private_endpoint = var.enable_private_endpoint
  node_pools = var.node_pools
  project_id = var.project_id
  region = var.region
  subnetwork = module.network.subnet_name
  cluster_network = module.network.vpc_name
  zone = var.zone
}