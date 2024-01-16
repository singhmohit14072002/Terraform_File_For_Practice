variable "filename" { # here we declare hardcoded values but we can override it or 
    default = "/root/pets.txt"
}
variable "content" {
    default = "We love pets!"
}
variable "prefix" {
    default = "Mrs"
}
variable "separator" {
    default = "."
}
variable "length" {
    default = "1"
}

# do this instead of override 
variable "ami" {

}
variable "instance_type" {

}


variable "db_ami" {
    default = "ami-76294uieywr"
}


variable "web_ami" {
    default = "ami-7922uiweugh"
}

variable "db_instance_type" {
    default = "m5.large"
}

variable "web_instance_type" {
    default = "t.micro"
}