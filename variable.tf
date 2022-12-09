variable "vpc_cidr" {
    default = "10.10.0.0/16"
  
}
variable "vpc_name" {
    type = map(any)
    default = {
        "Name" = "terraform-vpc"
    }
}

variable "subnet_cidr" {
    default = "10.10.1.0/26"  
}
variable "subnet_name" {
    type = map(any)
    default = {
      "Name" = "terraform-subnet"
    }
 
}

variable "rt_name" {
    type = map(any)
    default = {
      "Name" = "terraform-rt"
    }
  
}

variable "igw_name" {
    type = map(any)
    default = {
      "Name" = "terraform-igw"
    }
  
}


variable "sg_name" {
    type = map(any)
    default = {
      "Name" = "terraform-sg"
    }
  
}

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
      "Name" = "terraform-ec2"
    } 
}