### this is the example resource file that create the ec2 instance in the aws

resource "aws_cloud9_environment_ec2" "example" {
    instance_type = "t2.micro"
    name          = "example-env"
}
