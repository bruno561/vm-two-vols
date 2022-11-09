terraform {
  source = "git::https://git@github.com/brunopsantos93/module_gcp_vm.git//modules/gce?ref=v0.0.35"
}

include "root" {
  path = find_in_parent_folders()
}

inputs = {
    project = "development-367511"
    region = "us-east4"
    zone = "us-east4-a"
    vpc_network = "default"
    vpc_subnetwork = "default"
    compute_name = "linux-1"
    machine_type = "e2-micro"
    disk_type = "pd-standard"
    disk_size = "10"
    image = "ubuntu-2004-focal-v20221018"
    external_ip = true
    secondary_disk = 1
}