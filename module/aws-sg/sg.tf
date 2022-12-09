#security group creation
resource "aws_security_group" "sg1" {
    vpc_id = var.vpc_id
    tags = var.sg_name
    ingress {
        from_port = 3389
        to_port = 3389
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0" ]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = [ "0.0.0.0/0" ]

    }
}
