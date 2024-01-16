/*
Numeric function - Numeric function as the name suggests is used to transform and manipulate numbers. 
For example:- We can make use of the max function to return the greatest number from a set of numbers.
Use the terraform console to execute the max functon  for this variable
To use this variable woth the min or max function the vlaues inside the set can be expanded inti separate arguments.
This is done by using the expansion symbol by making use of three periods or full stops like this. 
expl- inside the console >max(var.num...) output = 989

some other commonly used numeric functions are the seal and the floor functions. The seal function rounds to the closest whole number that is greater then or equal to the current agrument
expl:-  >ceil(10.1) = 11 , >ceil(10.9)= 11, >floor(10.1)=10 , >floor(10.9)= 10
*/

variable "num" {
    type = set(number)
    default = [ 56,874,989,333,00 ]
    description = "A set of numbers"
}

/*
String Functions:-> These functions are used to transform or manipulate string type data.
*/
# First is split function this is also teested in terrafrom cosole \
# For Exp:- >split(",",ami-syz, AMI-AMB, ami-efg) the output of this is [ "ami-syz", "AMI-AMB", "ami-efg" ]
# to get output of these ami in lowe function use >lower(var.ami) = ami-syz, ami-amb, ami-efg for upper case functon use >upper instead of lower
# To convert the first letter of this string use > title(var.ami) output = Ami-Syz, AMI-AMB, Ami-Efg
# > substr(var.ami, 0, 7) = ami-xyz,  The substring function  is used  to extract  a substring from a string or in other words, cut a string into smaller string by providing an offset and a length.

variable "ami" {
    type = string
    default = "ami-syz, AMI-AMB, ami-efg"
    description = "A string coontaining ami ids"
}

/*
$terraform console
    >join("," ["ami-xyz", "AMI-ABC", "ami-efg"]) = ami-xyz,AMI_ABC,ami-efg
The jooin function does the opposite of split. It convert  a list to a string by adding them all together.
*/

/*
Collection Function
Which are used for collection data type, such as a set , list and map.
here we can use the length to find the lenght of list like >length(var.ami) = 3 

To find the index of a matching element we can make use of the index function. for exmp-
    >index(var.ami, "AMI-ABC") = 1 

    To find element in a list located at a specific index, we can make use of the element function like 
    exmp- > element(var.ami, 2) = ami-efg

To check specific element present in the list or not use > contains(var.ami, "AMI-ABC") = true

*/



# Map Functions
# To convert this map to list we just use keys function and supply map as an arguments like 
# >keys(var.ami) = 
# ["ami-xyz","ami-efg","ami-ABC" ]
/* 
for values we use > values(var.ami) 
[
    "ami-ABC",
    "ami-efgh",
    "ami-xyz"
]

To look up the value of a specific ley in a map, we can make use of the lookup function 
exp-  >lookup(var.ami, "ca-central-1")
        ami-efg

*/

variable "ami" {
    type = map
    default = {
        "us-east-1" = "ami-xyz",
        "ca-central-1" = "ami-efg",
        "ap-south-1" = "ami-ABC"
    }
    description = "A  map of AMI ID's for specific regions"
}