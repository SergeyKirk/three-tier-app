vpc_name        = "three-tier-vpc"

auto_create_sub = false
subnet_us_name = "us-a"
subnet_us_range = "10.0.0.0/16"

cluster_name = "three-tier-app"

region             = "us-central1"
zone               = "us-central1-a"
project_id         = "vahan-test-361914"
cluster_node_count = "2"
cluster_version    = "1.23"
#node_pool_service_account = "terraform@training-314315.iam.gserviceaccount.com"
gce_ssh_user           = "default-user"
master_ipv4_cidr_block = "0.0.0.0/0"

private_nodes           = false
enable_private_endpoint = false

node_pools = [
  {
    name               = "pool"
    initial_node_count = 1
    auto_repair  = true
    auto_upgrade = true
    min_node_count = 1
    max_node_count = 3
    image_type   = "cos_containerd"
    disk_size_gb = "10"
    preemptible  = false
    machine_type = "n1-standard-2"
    #      service_account = "terraform@training-314315.iam.gserviceaccount.com"
    labels = {}
    metadata = {
      /* ssh-keys = "${var.gce_ssh_user}:${file(var.gce_ssh_pub_key_file)}" */
      disable-legacy-endpoints = "true"
      }
    }
]
