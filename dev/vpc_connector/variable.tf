variable "project_id" {
  description = "The project ID to deploy to"
  type        = string
  default = "apigeeproject-391817"
}
# variable "project_id" {
#   description = "The project ID to deploy to"
#   type        = string
#   default = "apigeeproject-391817"
# }
variable "service_name" {
  description = "The name of the Cloud Run service to create"
  type        = string
  default = "test-nginx"
}
variable "credentials" {
   default = "key.json"
  
}

variable "location" {
  description = "Cloud Run service deployment location"
  type        = string
  default = "us-central1"
}
