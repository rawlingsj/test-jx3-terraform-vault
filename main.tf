//--------------------------------------------------------------------
// Modules
# module "jx" {
#   source  = "app.terraform.io/jenkinsxio/jx/google"
#   gcp_project = "jenkins-x-labs-bdd"
# }
module "jx" {
  source = "github.com/rawlingsj/terraform-google-jx"
  gcp_project = "jenkins-x-labs-bdd"
}

output "jx_requirements" {
  value = module.jx.jx_requirements
}
