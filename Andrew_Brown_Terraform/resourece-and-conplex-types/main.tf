# resource type 
terraform {
  
}

variable "planets" {
   type = list
   default = ["mars", "earth","moon"]
}

variable "plans" {
  type = map
  default = {
    "PlanA" = "10 USD"
    "PlanB" = "50 USD"
    "PlanC" = "100 USD"
  }
}

variable "random" {
   type = tuple([string, number, bool])
   default = ["hello" , 22, false]
}



variable "planets_objects" {
   type = list
   default = ["mars", "earth","moon"]
}

variable "plans_objects" {
  type = object({
    PlanA = string
    PlanB = string
    PlanC = string
  })
  default = {
    "PlanA" = "10 USD"
    "PlanB" = "50 USD"
    "PlanC" = "100 USD"
  }
}