module "api-gateway" {
  source  = "iraza/api-gateway/google"
  version = "0.1.0"
  # insert the 6 required variables here
  api_id = var.api_id
  api_config_id = var.api_config_id
  api_gateway_id = var.api_gateway_id
  open_api_document_file_path = var.open_api_document_file_path
  open_api_document_filename = var.open_api_document_filename
  api_gateway_display_name = var.api_gateway_display_name
}