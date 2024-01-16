/*
- We can also make use of arithmetic and logical operations with terraform and test the same usig terraform console command.
## Numeric Operators 
In $terraform console we perform 
> 1+2 =  3

### Terraform also support Equality Operator  
> 8 == 8
true 

> 8 != "8"
false

## Comparison Operator 
> 5 > 7
false

> 5 >= 5
true 
> 3 <= 4
true

### Logical Operators
> 8 > 7 && 8 < 10
true

> 8 > 9 || 8 < 10 
true 



*/

variable special {
    type = bool
    default = true
    description = "Set to true to use special characters"
}
// Here in this variable if we do $terraform console 
// and > var.special then it gives = true and if > ! var.special = false

variable b {
    type = number
    default = 25
}
# when we do terraform console > !(var.b > 30) then it return the = true 

# The same operation can be applied to variable in terraform like 
variable "a" {
    type = number
    default = 50
}

variable "b" {
    type = number
    default = 25
}

# Now run terraform console and give > var.a > var.b it rerturn the true similarly for different logical operator 

# Now lets write the terraform script to generate the random passwd 
resource "random_password" "password-generator" {
    length = var.length < 8 ? 8 : var.length ## here we use the if else condition in terraform (condition ? true_val : false_val) this way we use the conditional statement like if the condition is true
}

output password {
    value = random_password.password-generator.result
}

# Now we pass the value terraform -var = length=12  value is greater than 8 terraform generate the value 
