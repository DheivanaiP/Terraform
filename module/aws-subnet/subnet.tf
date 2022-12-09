#subnet creation
resource "aws_subnet" "sb1" {
    vpc_id = var.vpc_id
    cidr_block = var.subnet_cidr
    tags = var.subnet_name

  
}