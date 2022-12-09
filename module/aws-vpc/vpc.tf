#main vpc creation
resource "aws_vpc" "vpc1"{
 cidr_block = var.vpc_cidr
 tags = var.vpc_name 
}
