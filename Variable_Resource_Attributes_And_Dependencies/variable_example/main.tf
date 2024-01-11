resource "aws_instance" "web" {
    ami = var.ami
    instance_type = var.instance_type
    tags = {
        name = var.servers[0] # here we called the server web1
    }
  
}

resource "aws_instance" "production" {
    ami = var.ami

    instance_type = var.instance_type["development"]
    tags = {
        name = var.servers[0]
    }
}

# set variable is similar to list the diffrence is that set have not duplicate elements 
variable "db" {
    default = ["db0","db1","db2"]
    type = set(string)

}

# Object vaiable 
#With Object, we can create a complex data structure by combining all the variable type that we have used in above emp. 

variable "bella" {
    type = object({
        name = string
        color = string
        age= number
        food = list(string)
        favorite_pet = bool
    })

    default = {
        name = "bella"
        color = "brown"
        age = "7"
        food = [ "fish", "chicken", "turkey" ]
        favorite_pet = true
    }
}


## Tuple variable
## A tuple is similar to list and consists of a sequence of element. The diffrence betweem a tuple and list is that a list uses elements of the same variable type , whereas in tuple we can make use of different variable types. 
variable web {
    type = tuple([ string, number, bool ])
    default = [ "web1", 3, true]
  
}