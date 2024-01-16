resource "aws_vpc" "backend-vpc" {
    cidr_block = "10.0.0./16"
    tags = {
        Name = "backend-vpc"
    }
}

resource "aws_subnet" "private_subnet" {
    vpc_id = aws_vpc.backend-vpc.id
    cidr_block = "10.0.2.0/24"
    tags = {
        Name = "private-subnet"
    }
}

resource "aws_security_group" "backend-sg" {
    name = "backend-sg"
    vpc_id = aws_vpc.backend-vpc.id ## So lets understand why we need dynamic block when we assign the ingress we want to give one port or two then its ok to assign default but when we need to assign multiple ports then we use dynamic block.
    dynamic "ingress" {
        for_each = var.ingress_ports
        content {
            from_port = ingress.value
            to_port = ingress.value 
            protocol = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
        }
    }

}