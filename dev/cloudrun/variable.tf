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


variable "location" {
  description = "Cloud Run service deployment location"
  type        = string
  default = "us-central1"
}

variable "image" {
  description = "GCR hosted image URL to deploy"
  type        = string
  default = "nginx"
}
variable "generate_revision_name" {
  type        = bool
  description = "Option to enable revision name generation"
  default     = true
}
variable "traffic_split" {
  type = list(object({
    latest_revision = bool
    percent         = number
    revision_name   = string
    tag             = string
  }))
  description = "Managing traffic routing to the service"
  default = [{
    latest_revision = true
    percent         = 100
    revision_name   = "v1-0-0"
    tag             = null
  }]
}
variable "service_labels" {
  type        = map(string)
  description = "A set of key/value label pairs to assign to the service"
  default     = {"name":"test"}
}
variable "service_annotations" {
  type        = map(string)
  description = "Annotations to the service. Acceptable values all, internal, internal-and-cloud-load-balancing"
  default = {
    "run.googleapis.com/ingress" = "all"
  }
}
variable "template_annotations" {
  type        = map(string)
  description = "Annotations to the container metadata including VPC Connector and SQL. See [more details](https://cloud.google.com/run/docs/reference/rpc/google.cloud.run.v1#revisiontemplate)"
  default = {
    "run.googleapis.com/client-name"   = "terraform"
    "generated-by"                     = "terraform"
    "autoscaling.knative.dev/maxScale" = 2
    "autoscaling.knative.dev/minScale" = 1
    "run.googleapis.com/cpu-throttling" = false
    "run.googleapis.com/execution-environment" = "gen1"
    "run.googleapis.com/vpc-access-connector" = "test1"
    "run.googleapis.com/vpc-access-egress" = "all-traffic"
  }
}
variable "encryption_key" {
  description = "CMEK encryption key self-link expected in the format projects/PROJECT/locations/LOCATION/keyRings/KEY-RING/cryptoKeys/CRYPTO-KEY."
  type        = string
  default     = null
}
variable "container_concurrency" {
  type        = number
  description = "Concurrent request limits to the service"
  default     = 10
}
variable "  " {
  type        = number
  description = "Timeout for each request"
  default     = 120
}
# variable "limits" {
#   type        = map(string)
#   description = "Resource limits to the container"
#   default     = null
# }
# variable "requests" {
#   type        = map(string)
#   description = "Resource requests to the container"
#   default     = {}
# }

variable "ports" {
  type = object({
    name = string
    port = number
  })
  description = "Port which the container listens to (http1 or h2c)"
  default = {
    name = "http1"
    port = 80
  }
}
// IAM
variable "members" {
  type        = list(string)
  description = "Users/SAs to be given invoker access to the service"
  default     = [ ]
}