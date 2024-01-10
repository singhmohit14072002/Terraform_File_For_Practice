/*
terraform { # Terraform block is used to configure setting related to terraform itself. To make use of specific version of the provider, we need to make use of another block called required providers  inside the terrraform block. We can have multiple arguments to every provider that we want to use.
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.4.0" # also we can use here "> 1.2.0, <2.0.0, != 1.4.0" Here the version greater than 1.2.0 but lesser than 2.0.0 and not the exact version 1.4.0
    }
  }
}
*/


resource "local_file" "pets" { 
    filename = "/root/pets.text"
    content = "We love pets!"
}