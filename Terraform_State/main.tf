resource "aws_cloud9_environment_ec2" "example" {
    instance_type = "t5.medium"
    name          = "example-env"
    image_id      = "amazonlinux-2023-x86_64"
}