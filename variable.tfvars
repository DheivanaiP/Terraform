vpc_cidr = "10.10.0.0/16"

vpc_name = {
   "Name" = "terraform-vpc"
}

subnet_cidr = "10.10.1.0/26"

subnet_name = {
    "Name" = "terraform-subnet"
}

rt_name = {
    "Name" = "terraform-rt"
}

igw_name = {
    "Name" = "terraform-igw"
}

sg_name = {
    "Name" = "terraform-sg"
}

ami_id = "ami-0f9d9a251c1a44858"

instance_type ="t2.micro"

instance_name = {
    "Name" = "terraform-ec2"
}