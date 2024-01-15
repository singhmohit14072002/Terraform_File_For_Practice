resource "aws_instance" "cerberus" {
    ami = "ami-78653ujsidfius"
    instance_type = "m5.large"
    tags = {
        Name = "cerberus-webserver"
    lifecycle = {
        create_before_destroy = true
    }    
    }
}
/*
lifecycle rule can be added by using the lifecycle block that goes inside a resource block.
Now when we run the terraform apply, the new instance will be created first, and then only will the old instance be
destroyed.
*/

# if we don't want resource to be destroyed for any reason, even if changes in the configuration file would warrant the said resource to be destroyed, then we can make use of a lifecycle rule like this. 

# prevent_destroy
# if we do not want to destroy destroy resources when we change anything in the configuration then we use this lifecycle

resource "aws_instance" "cerberus" {
    ami = "ami-78653fkhahskgus"
    instance_type = "m5.large"
    tags = {
        Name = "cerberus-webserver"
    lifecycle = {
        prevent_destroy = true
    }    
    }
}

/*
this is useful  safeguard to prevent your resources from getting accidentally deleted especially resources such as databases
which may not be something ypu want to change once its provision.
*/



# ignore_changes
/*
The ignore changes rule  when applied will prevent a resource from being updated based on a list of attributes
were define inside the lifecycle block.
*/

resource "aws_instance" "cerberus" {
    ami = "ami-78653ujsidfius"
    instance_type = "m5.large"
    tags = {
        Name = "cerberus-webserver-1"
    lifecycle = {
        ignore_changes = [  // also we can give here this to igonre all changes ignore_changes = all
            tags
        ]
    }    
    }
}