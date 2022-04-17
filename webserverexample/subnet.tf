resource "aws_subnet" "ap-south-1a" {
   vpc_id = aws_vpc.default.id
   cidr_block = "10.0.1.0/24"
   availability_zone = "ap-south-1a"	

	tags = { 
 	 name = "vpc security group"
	}
}
