resource "aws_instance" "web" {
    ami = var.ami
    instance_type = var.instance_type
    for_each = var.webservers // here we use meta arguments for_each to loop through the vaiable called webservers
    tags = {
        Name = each.value
    }

}

/*
The variable type of the webservers cannot be the list type we have to set it to the set or map-type
instance.  
*/