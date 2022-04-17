resource "aws_subnet" "ap-south-1a" {
   vpc_id = aws_vpc.default.id
#   cidr_block = "10.0.1.0/24"
#   cidr_block = cidrsubnet("10.0.0.0/16",8,1)
   cidr_block = cidrsubnet("${aws_vpc.default.cidr_block}",8,1)
   availability_zone = "ap-south-1a"	

	tags = { 
 	 name = "vpc security group"
	}
}
