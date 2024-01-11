# Here we use the list variable 
variable "servers" {
    default = ["web1", "web2", "web3"] # And the list always start with the index zero
    type = list
}

# Now the example of map variable 
# A map is data represented in the format of key-value pairs. In the variable.tf file

variable instance_type {
    type = map
    default = {
        "production" = "m5.large"
        "development" = "t2.micro"
    }

}

variable "ami" {

    default = "ami-7952985ohuwygherw"
}
variable "instance_type" {
    default = "m5.large"
}

variable "region" {
    default = "eu-west-2"
  
}