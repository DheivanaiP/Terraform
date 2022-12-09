variable "vpc_cidr" {
    default = "10.10.0.0/16"
  
}
variable "vpc_name" {
    type = map(any)
     default = {
        "Name" = "terraform-vpc"
    }
}