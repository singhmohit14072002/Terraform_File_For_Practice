resource "aws_instance" "webserver-2" {
    # (resource arguments)
}

/*
to import  the resources to use terraform import <resource_type.<resource_name> <attribute>
like terraform import aws_instance.webserver-2 i-08967894iyweh364
*/