resource "local_file" "pet" { # here we provide the local resource type 
    filename = "/root/pets.text"
    content = "We love pets!"
}

# Now here we provide the random provider 

resource "random_pet" "my-pet" {
    prefix = "Mrs"
    separator = "."
    length = "1"
}