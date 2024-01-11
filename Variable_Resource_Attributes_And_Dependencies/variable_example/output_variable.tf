## Output Variable
/* These variable can be used to store the value of an expression in terrafoorm for 
example  to store the public ip adderess of an ec2 instance created by the resorce block called web
*/

resource "aws_instance" "cereberus" {
    ami = var.ami
    instance_type = var.instance_type

  
}

output "pub_ip" {
      value = aws_instance.cereberus.public_ip
      description = "print the public ipv4 adderess"  
}
## the best use od the terraform output variable is when you want to quickly display the details about the provision resources on the screen or to feed the output variables

