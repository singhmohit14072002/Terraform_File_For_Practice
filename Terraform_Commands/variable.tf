variable "ami" {
    default = "ami-8726358shfisk"

}
variable "instance_type" {
    type = map 
    default = {
        "developement" = "t2.micro"
        "production" = "m5.large"
    }
}
variable "region" {
    default = "ca-central-1"
}