# Input Variables
# GCP Project
variable "gcp_project" {
  description = "Project in which GCP resources need to be created"
  type = string
  default = "gcplearn19"
}
variable "gcp_region1" {
  description = "Region the GCP resourses need to be created"
  type = string
  default = "us-east1"
}
variable "machine_type" {
  description = "machine type"
  type = string
  default = "e2-small"
}
