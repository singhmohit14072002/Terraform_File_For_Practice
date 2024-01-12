data "aws_key_pair" "cereberus-key" {
    key_name = "alpha"
}

resource "aws_instance" "cereberus" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = data.aws_key_pair.cereberus-key
}





/*
we have used reference expressions wherever we needed to make use of the attributes of one resource as an 
arguments for another.
In previous example when we create the resourece for aws key pair resource and then use the key name atrribute
of this resource as an arguments for creating  an aws instance are part of the same terraform configuration,
which allows us to make use of these reference attributes. However there would be many cases where a resource already exists
or was created by some other means other than the Terraform configuration that we are working on right now. For example, an existing key pair

that was perhaps created manually, or perhaps using some other tools such as CloudFormation, Ansible, et cetera, or it may may have aslo been created.
as part of a diffrent terraform configuration to make use of such a resource within our terraform configuration we can make use of data source.

*/