module "firewall-ssh" {
  source = "git::https://github.com/nasir19noor/terraform.git//gcp/modules/firewall"

  project       = local.project_id
  name          = local.ssh_name
  network       = local.network
  description   = local.ssh_description 
  protocol      = local.ssh_protocol
  ports         = local.ssh_ports
  source_ranges = local.ssh_source_ranges
  target_tags   = local.ssh_target_tags
}

module "firewall-allow-service" {
  source = "git::https://github.com/nasir19noor/terraform.git//gcp/modules/firewall"

  project       = local.project_id
  name          = "netflix-clone-allow-service"
  network       = local.network
  description   = "allow service container port"
  protocol      = local.ssh_protocol
  ports         = ["30000-33000"]
  source_ranges = local.ssh_source_ranges
  target_tags   = local.ssh_target_tags
}

module "firewall-allow-30080" {
  source = "git::https://github.com/nasir19noor/terraform.git//gcp/modules/firewall"

  project       = local.project_id
  name          = "netflix-clone-allow-service-30080"
  network       = local.network
  description   = "allow service container port"
  protocol      = local.ssh_protocol
  ports         = ["30000-33000"]
  source_ranges = local.ssh_source_ranges
  target_tags   = ["gke-nasir-cluster-0c073d54-node"]
}

module "firewall-allow-9000" {
  source = "git::https://github.com/nasir19noor/terraform.git//gcp/modules/firewall"

  project       = local.project_id
  name          = "allow-service-9000"
  network       = local.network
  description   = "allow sonarqube port"
  protocol      = local.ssh_protocol
  ports         = ["9000"]
  source_ranges = local.ssh_source_ranges
  target_tags   = local.ssh_target_tags
}

module "firewall-allow-8081" {
  source = "git::https://github.com/nasir19noor/terraform.git//gcp/modules/firewall"

  project       = local.project_id
  name          = "allow-service-8081"
  network       = local.network
  description   = "allow container port"
  protocol      = local.ssh_protocol
  ports         = ["8081"]
  source_ranges = local.ssh_source_ranges
  target_tags   = local.ssh_target_tags
}

module "firewall-allow-8080" {
  source = "git::https://github.com/nasir19noor/terraform.git//gcp/modules/firewall"

  project       = local.project_id
  name          = "allow-jenkins-port-8080"
  network       = local.network
  description   = "allow Jenkins port"
  protocol      = local.ssh_protocol
  ports         = ["8080"]
  source_ranges = local.ssh_source_ranges
  target_tags   = local.ssh_target_tags
}

module "firewall-allow-9090" {
  source = "git::https://github.com/nasir19noor/terraform.git//gcp/modules/firewall"

  project       = local.project_id
  name          = "allow-prometheus-port-9090"
  network       = local.network
  description   = "allow prometheus port"
  protocol      = local.ssh_protocol
  ports         = ["9090"]
  source_ranges = local.ssh_source_ranges
  target_tags   = local.ssh_target_tags
}

