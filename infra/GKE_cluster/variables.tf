#GKE
variable "google_project" {}
variable "google_region" {}
variable "google_zone" {}
variable "storage_bucket" {}
variable "cluster_name" {}
variable "node_pool_name" {}

# falco
variable "falco_enabled" {
  default = false
}

variable "falco_version" {
  default = "1.8.0"
}

variable "falco_namespace" {
  default = "falco"
}
variable "falco_webhookurl" {}

# prometheus
variable "grafana_password" {}