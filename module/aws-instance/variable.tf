variable "ami_id" {
    type = string
    default = "ami-0f9d9a251c1a44858"
  
}
variable "instance_type" {
    type = string
    default = "t2.micro"
  
}
variable "instance_name" {
    type = map(any)
    default = {
      Name = "terraform-ec2"
    } 
}
variable "subnet_id" {
    type = string 
}
