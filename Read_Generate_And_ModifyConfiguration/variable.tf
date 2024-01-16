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