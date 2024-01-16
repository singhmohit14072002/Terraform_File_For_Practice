resource "aws_instance" "webservers" {
    ami = "ami-0872345yiwsegfiwk"
    instance_type = "t2.micro"
    /*
    For exapmle if you want to store the public IP address of the EC2 instance that was just provision into file called 
    ip.text in the /tmp file system we can run the local exec provisoner like this.

    By default provisioners are run after the resource were created. This default behaviour and it is called time provisioner.
    We can make provisiioner run before a resource is destroyed. This is called a destroyes time provisioner.

    Any ressource that is created while the provisional fails is marked as tainted within terraform.
    For terraform apply operation to not fail and the resource to be created to be successfully even if the 
    provisional command or script fails, we can set the value of the on-failure argument to continue.
    */
    provisioner "local-exec" {
        on_failure = fail
        command = "echo ${aws_instance.webservers.public_ip} created!  >> /tmp/ips.txt"
    }
    provisioner "local-exec" {
        when = destroy
        command = "echo ${aws_instance.webservers.public_ip} destroy!  >> /tmp/ips.txt"
    }

}

/*
Local exec provisioner used to run tasks on the local machine where we are running the terraform binary and not on 
the resource which are created by terraform.



*/