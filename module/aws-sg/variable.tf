
variable "sg_name" {
    type = map(any)
    default = {
      Name = "terraform-sg"
    }
  
}
variable "vpc_id" {
    type = string
  
}
