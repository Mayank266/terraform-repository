module "serverless-connector" {
  source     = "terraform-google-modules/network/google//modules/vpc-serverless-connector-beta"
  project_id = var.project_id
  vpc_connectors = [{
    name            = "test1"
    region          = "us-central1"
    subnet_name     = "connector-test"
    host_project_id = var.project_id
    machine_type    = "e2-micro"
    min_instances   = 2
    max_instances   = 3
    max_throughput  = 300
  }]
}