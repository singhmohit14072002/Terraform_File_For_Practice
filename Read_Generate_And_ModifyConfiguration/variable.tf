variable "ami" {
    default = "ami-1278ygbfilshf74gh"
}
variable "instance_type" {
    default = "m5.large" 
}
variable "webservers" {
    type = set
    default = ["web1","web2","web3"]
}

## this is for random password gerator varibale.tf 
variable length {
    type = number
    description = "The lenght of the password"
}


### This is for dynamic block 

variable "ingress_ports" {
    type = list
    default = [22,8080]
}