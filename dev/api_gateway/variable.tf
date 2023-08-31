variable "project_id" {
  description = "The project ID to deploy to"
  type        = string
  default = "apigeeproject-391817"
}
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

variable "api_id" {
  type = string
  default = "testid"

}
variable "api_config_id" {
  type = string
  default = "testid"
}
variable "api_gateway_id" {
  type = string
  default = "testid"
}

variable "open_api_document_filename" {
  type = string
  default = "openapi.yml"
}

variable "open_api_document_file_path" {
  type = string
  default = "/home/unthinkable-lap-0286/Desktop/Deveops/acutiy-poc/terraform/dev/api_gateway/openapi.yml"
}
variable "api_gateway_display_name" {
  type = string
  default = "testid"
}