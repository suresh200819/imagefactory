variable "project_id" {
  type    = string
  default = "poc-adm-finserv-1133276"
}

variable "region" {
  type    = string
  default = "europe-west2"
}

variable "zone" {
  type    = string
  default = "europe-west2-b"
}

variable "machine_type" {
  type    = string
  default = "e2-small"
}

variable "image_name" {
  type = string
  default = "infy-nginx-non-prod"
}

variable "image_family" {
  type = string
  default = "infy-nginx-non-prod"
}

variable "image_description" {
  type    = string
  default = ""
}

variable "source_image" {
  type    = string
  default = "ubuntu-2004-focal-v20230628"
}

variable "source_image_family" {
  type    = string
  default = "ubuntu-2004-lts"
}

variable "source_image_project_id" {
  type    = list(string)
  default = ["ubuntu-os-cloud"]
}

variable "disk_size" {
  type    = string
  default = "60"
}

variable "disk_type" {
  type    = string
  default = "pd-ssd"
}

variable "network_project_id" {
  type    = string
  default = "poc-adm-finserv-1133276"
}

variable "network" {
  type    = string
  default = "vpchost-eu-dev"
}

variable "subnetwork" {
  type    = string
  default = "int-europe-west2"
}

variable "tags" {
  type    = list(string)
  default = ["fw-a-e-iap", "fw-a-i-iap", "fw-a-e-tag", "fw-a-e-google-hc", "fw-a-i-tag", "fw-a-i-google-hc"]
}

variable "impersonate_service_account" {
  type    = string
  default = "gcp-ops@poc-adm-finserv-1133276.iam.gserviceaccount.com"
}

variable "metadata" {
  type    = map(string)
  default = {}
}

variable "preemptible" {
  type    = bool
  default = true
}
                                                                        
variable "account_json" {
  type    = string
  default = "${env("GOOGLE_CREDENTIALS")}"
}
