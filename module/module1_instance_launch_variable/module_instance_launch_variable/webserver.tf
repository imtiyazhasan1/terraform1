resource "aws_instance" "webserver" {
     ami = var.ami
     instance_type = var.type
#     instance_type = "t2.micro"
     subnet_id = aws_subnet.ap-south-1a.id
     vpc_security_group_ids = [aws_security_group.instance.id]     
    tags = var.tags
#   tags = { 
#    name = "test"
#    environment = "prod"
#    security = "I-Z"
#} 
}
