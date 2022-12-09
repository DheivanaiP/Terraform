
#adding route
resource "aws_route" "add-rt" {
    route_table_id = var.route_table_id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = var.gateway_id 
}
#subnet association
resource "aws_route_table_association" "rt-ass" {
    subnet_id = var.subnet_id
    route_table_id = var.route_table_id
}
