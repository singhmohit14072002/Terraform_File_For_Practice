resource "aws_instance" "webservers" {
    ami = var.ami
    instance_type = var.instance_type
    count = length(var.webservers)
    tags = {
        Name = var.webservers[count.index] // if you want to look through the list-type variable and assign a tag for each instance with the corresponding values at each index
    }
}
# here we set the count as 3 so terraform create the 3 EC2 instance using this resource
# terraform state list  command confirms that three ec2 instances wew created and recorded in the state file.

