
variable "igw_name" {
    type = map(any)
    default = {
      Name = "terraform-igw"
    }
  
}
variable "vpc_id" {
    type = string
  
}