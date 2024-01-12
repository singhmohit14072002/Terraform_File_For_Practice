resource "random_string" "serever-suffix" {
    length = 6
    upper = false
    special = false
}

resource "aws_instance" "web" {
    ami = "ami-06173256792386hjds74"
    instance_type = "m5.large"
    tags = {
        Name = "web-${random_string.server-suffix.id}"
    }

}

/*
Here we use resource targetting with terraform plan or terraform apply command. 
here we use interpolation sequence wrapping the reasource attribute random string.suffix.id inside the doller
curly braces.
And Allows resources to be created and destroyed in the correct order
*/