variable "project_id" {
  type    = string
  default = "nifty-quanta-387606"
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
  default = "devops-image"
}

variable "source_image_family" {
  type    = string
  default = "rhel-7-9-sap-ha"
}

variable "source_image_project_id" {
  type    = list(string)
  default = ["nifty-quanta-387606"]
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
  default = "nifty-quanta-387606"
}

variable "network" {
  type    = string
  default = "default"
}

variable "subnetwork" {
  type    = string
  default = "default"
}

variable "tags" {
  type    = list(string)
  default = []
}

variable "impersonate_service_account" {
  type    = string
  default = "539380689231-compute@developer.gserviceaccount.com"
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
