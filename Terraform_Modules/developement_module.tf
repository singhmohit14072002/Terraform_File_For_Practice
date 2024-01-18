// this is a example of the local module it resides within the local machine where terraform install.
module "dev-webserver" {
    source = "../Terraform_Commands" // here we can also give the absolute path to the child mudule
}  