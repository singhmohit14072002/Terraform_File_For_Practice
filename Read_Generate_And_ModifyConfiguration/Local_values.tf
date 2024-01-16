/* locals values we use like when we have multiple resources and the tags of this resources or any thing which is same
ans use multiple times to all resources instead of doing same things to the all reaources we create the local 
and give the common attributes to them. Which use by all reaources .

for exapl"-
*/
resource "aws_instance" "web" {
    ami = "ami-187243hsfdghjsdf"
    instance_type = "t2.medium"
    tags = local.common_tags
}
resource "aws_instance" "db" {
    ami = "ami-8975hnjkghjfsd"
    instance_type = "m5.large"
    tags = local.common_tags
}

locals {
    common_tags = {
        Department = "finance"
        Project = "cerberus"
    } # here the common tags are used by both the resources
}