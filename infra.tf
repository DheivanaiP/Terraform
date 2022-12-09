#main vpc creation
module "aws-vpc" {
    source = "./module/aws-vpc"
    vpc_cidr = var.vpc_cidr
    vpc_name = var.vpc_name
  
}


#subnet creation
module "aws-subnet" {
    source = "./module/aws-subnet"
    vpc_id = module.aws-vpc.vpc_id
    subnet_cidr = var.subnet_cidr
    subnet_name = var.subnet_name
  
}

#internet gateway
module "aws-igw" {
    source = "./module/aws-igw"
    vpc_id = module.aws-vpc.vpc_id
    igw_name = var.igw_name
  
}


#route table
module "aws-route-table" {
    source = "./module/aws-route-table"
    vpc_id = module.aws-vpc.vpc_id
    rt_name = var.rt_name
    
  
}

#adding route
module "aws-add-route" {
    source = "./module/aws-add-route"
    subnet_id = module.aws-subnet.subnet_id
    route_table_id = module.aws-route-table.route_table_id
    gateway_id = module.aws-igw.gateway_id
  
}


#security group
module "aws-sg" {
    source = "./module/aws-sg"
    vpc_id = module.aws-vpc.vpc_id
    sg_name = var.sg_name
  
}

#instance
module "aws-instance" {
    source = "./module/aws-instance"
    ami_id = var.ami_id
    subnet_id = module.aws-subnet.subnet_id
    instance_name = var.instance_name
    instance_type = var.instance_type
  
}
