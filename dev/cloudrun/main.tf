module "cloud-run" {
  source  = "GoogleCloudPlatform/cloud-run/google"
  version = "0.9.1"
  # insert the 4 required variables here
  service_name           = var.service_name
  project_id             = var.project_id
  location               = var.location
  image                  = var.image
  generate_revision_name  = var.generate_revision_name
  traffic_split = var.traffic_split
  service_labels = var.service_labels
  service_annotations = var.service_annotations
  template_annotations = var.template_annotations
  # encryption_key = var.encryption_key
  container_concurrency = var.container_concurrency
  timeout_seconds = var.timeout_seconds
  ports = var.ports
  members = var.members
}


