packer {
  required_plugins {
    goolecompute = {
      version = ">=0.0.1"
      source  = "github.com/hashicorp/googlecompute"
    }
  }
}

source "goolecompute" "image" {
  account_file                    = var.account_json
  project_id                      = var.project_id
  region                          = var.region
  zone                            = var.zone
  #impersonate_service_account     = var.impersonate_service_account
  #disable_default_service_account = true
  source_image                    = var.source_image
  source_image_family             = var.source_image_family
  source_image_project_id         = var.source_image_project_id
  image_name                      = format("%s-%s", var.image_name, formatdate("mm-hh-DD-MM-YY", timestamp()))
  image_family                    = var.image_family
  image_description               = var.image_description
  ssh_username                    = "ubuntu"
  ssh_pty                         = false
  #disk_size                       = var.disk_size
  machine_type                    = var.machine_type
  disk_type                       = var.disk_type
  network_project_id              = var.network_project_id
  network                         = var.network
  subnetwork                      = format("projects/%s/regions/%s/subnetworks/%s", var.network_project_id, var.region, var.subnetwork)
  metadata                        = var.metadata
  omit_external_ip                = true
  use_internal_ip                 = true
  preemptible                     = var.preemptible
  tags                            = var.tags
}

build {
  sources = ["sources.goolecompute.image"]

  provisioner "shell" {
    environment_vars = [
      "FOO=bar-test-image-build",
      "TEST_VAR=${var.image_name}"
    ]
    inline = [
      "echo testing echo ${var.image_family}",
      "echo $FOO"
    ]
  }

  provisioner "shell" {
    inline = [
      "sudo yum update -y"
    ]
  }
}
