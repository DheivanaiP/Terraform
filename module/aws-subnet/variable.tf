
variable "subnet_cidr" {
    default = "10.10.1.0/26"  
}
variable "subnet_name" {
    type = map(any)
    default = {
      Name = "terraform-subnet"
    }
 
}
variable "vpc_id" {
    type = string
  
}
