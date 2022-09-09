variable "region" {
  type        = string
  description = "- (Required) Google region where the cluster will be deployed."
}

variable "vpc_name" {
  type        = string
  description = "- (Required) Name of the VPC where the cluster will be deployed."
}

variable "auto_create_sub" {
  type        = bool
  description = "- (Required) Whether to create subnetworks automatically."
}

variable "subnet_us_name" {
    type        = string
    description = "- (Required) Name of the subnet in us-a."
}

variable "subnet_us_range" {
    type        = string
    description = "- (Required) The range of internal addresses that are owned by this subnetwork."
}

variable "ssh_firewall_rule_name" {
    type        = string
    description = "- (Required) Name of the firewall rule to allow SSH access to the cluster."
}

variable "egress_firewall_rule_name" {
    type        = string
  default = "egress-firewall-rule"
    description = "- (Required) Name of the firewall rule to allow egress traffic to the internet."
}

variable "allow_ingress_firewall_rule_name" {
    type        = string
  default = "ingress-firewall-rule"
    description = "- (Required) Name of the firewall rule to allow egress traffic to the internet."
}