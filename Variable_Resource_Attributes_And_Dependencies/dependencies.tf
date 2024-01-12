resource "aws_instance" "db" {
    ami = var.db_ami
    instance_type = var..web_instance_type
}

resource "aws_instance" "web" {
    ami = var.web_ami
    instance_type = var.db_instance_type
    depends_on = [ aws_instance.db 
    ]
}

# Here this is as an explicit dependency. Here we have specified that the web instance depends on the DB instance, and hence the DB instance will created first and only then will be the web instance privision.
