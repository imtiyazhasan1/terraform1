resource "aws_security_group"  "instance" {
   name = "attach-example"
   description = "Allow port 8080"
   vpc_id = aws_vpc.default.id
   ingress {
     description = "allow 8080"
     from_port = 8080
     to_port = 8080
     protocol = "tcp"
     cidr_blocks = [aws_vpc.default.cidr_block]
}
#    tags = {
#      name = "allow Port"
#}
   tags = var.tags
}
