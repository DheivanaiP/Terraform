
variable "rt_name" {
    type = map(any)
    default = {
      Name = "terraform-rt"
    }
  
}
variable "vpc_id" {
    type = string
  
}
