resource "aws_instance" "webserver" {
    ami = var.ami
    instance_type = lookup(var.instance_type, terraform.workspace)
    tags = {
        Environment= terraform.workspace
    }
}

# To use of the workspace we can create the multiple infratructure like development and production envrionment 
# Workspacce created within every terraform configuration. This can be inspected by the running command 
# terraform workspace list 
/*
To create the new workspces we can make  use of the new subcommand followed by the name of the name of the workspace
- terraform workspce new production or development 
- ` terraform console ` command tells in which environment we have 
- ` terraform workspace select production `  this command is use to switch the environment of the workspace in terraform 

*/