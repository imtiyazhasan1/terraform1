resource "aws_vpc" "imtiyazvpc" {
   cidr_block = "10.0.0.0/16"
   tags = {
      name = "Default VPC"
}
}
