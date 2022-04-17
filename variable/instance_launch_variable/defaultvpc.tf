resource "aws_vpc" "default" {
#   cidr_block = "10.0.0.0/16"
   cidr_block = var.cidr
   tags = {
      name = "Default VPC"
}
}
