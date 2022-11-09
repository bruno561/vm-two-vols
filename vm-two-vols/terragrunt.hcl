terraform {
  source = "git::https://git@github.com/brunopsantos93/module_gcp_vm.git//modules/gce?ref=v0.0.49"
}

include "root" {
  path = find_in_parent_folders()
}

inputs = {
    project = "development-367511"
    region = "us-east4"
    zone = "us-east4-b"
    vpc_network = "default"
    vpc_subnetwork = "default"
    compute_name = "linux"
    machine_type = "n2-highmem-8"
    disk_type = "pd-ssd"
    disk_size = "50"
    image = "debian-11-bullseye-v20221102"
    external_ip = false
    secondary_disk = true
    secondary_disk_name = "secondary-disk-1"
    secondary_disk_size = "50"
    secondary_disk_type = "pd-ssd"
}
