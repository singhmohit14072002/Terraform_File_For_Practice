resource "aws_instance" "webservers" {
    ami = "ami-7265hfgks82hh"
    instance_type = "t2.micro"
    provisioner "remote-exec" {
        inline = [ "sudo apt update",
                    "sudo apt install nginx -y",
                    "sudo systemctl enable nginx",
                    "sudo systemctl start nginx",
                
            ]
    }

    /*
    we can also use natively available for resource type for the provider used.
    for exp->
    user_data = <<-EOF
                #!/bin/bash
                sudo apt update
                sudo apt install nginx -y"
                sudo systemctl enable nginx
                sudo systemctl start nginx
for aws we can use <user_data>, for azure<custom_data>, for GCP<meta_data>
    */


    // To facilitate the authentication we can make use of the connection block.
    connection {
        type = "ssh"
        host = self.public_ip
        user = "ubuntu"
        private_key = file("root/.ssh/web")
    }
    key_name = aws_key_pair.web.id 
    vpc_security_group_ids = [aws_security_group.ssh-access.id]

}

resource "aws_security_group" "ssh-access" { // here we have to make connection between the remote server if we use  linus os then connecton establish through SSH for window WINRM
// here we use ssh key pair that can use to access the instance
    // < code hidden >
}


