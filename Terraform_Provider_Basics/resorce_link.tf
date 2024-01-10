resource "random_string" "server-suffix" {
    length = 6
    upper = false
    special = false
}

resource "aws_instance" "web" {
    ami = "ami-0677463cf067437478"
    instance_type = "m5.large"
    tags = { # This is called as a resource attribute reference and it helps link resources together.
        Name = "web-${random_string.server-suffix.id}" 
}
}