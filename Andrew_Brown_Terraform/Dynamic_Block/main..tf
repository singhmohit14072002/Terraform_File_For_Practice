terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.35.0"
    }
  }
}

provider "aws" {
  profile = "default"
  region = "us-east-1"

}

data "vpc" "main" {
    vpc_id = ""
  
}



resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = data.aws_vpc.main.id

ingress = [
    {

        description = "TLS from vpc"
        from_port         = 443
        ip_protocol       = "tcp"
        to_port           = 443
        cidr_blocks = [aws_vpc.main.cidr_block]
        ipv6_cidr_blocks = []
        prefix_list_ids = []
        security_group = []
        self = false
    }

]

egress = [

    {
        description = "outgoing for every one"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }
]

}