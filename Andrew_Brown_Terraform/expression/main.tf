terraform {
  
}


variable "worlds" {
  type = list(string)
}

variable "worlds_map" {
  type = map(string)
}

# splats expression

variable "worlds_splat" {
  type = list
}
