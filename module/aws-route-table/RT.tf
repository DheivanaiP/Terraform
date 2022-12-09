#route table
resource "aws_route_table" "rt1" {
    vpc_id = var.vpc_id
    tags =var.rt_name
  
}

