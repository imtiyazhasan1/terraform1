resource "aws_instance" "webserver" {
     #ami = "ami-04a223c5825a793bc"
     ami = var.ami
#     count = 3
#     instance_type = "t2.micro"
     instance_type = var.instance_type
     subnet_id = aws_subnet.ap-south-1a.id
     vpc_security_group_ids = [aws_security_group.instance.id]     
    tags = var.tags
#   tags = { 
#    name = "test"
#    environment = "prod"
#    security = "I-Z"
#} 
####Here we have defined the Provisioner which performs the action on remote machine###
# provisioner "remote-exec" {
# inline = [
#  "puppet apply",
#  "consul join ${aws_instance.webserver.private_ip}",
#]
#}
 provisioner "file" {
   source = "/etc/hosts"
   destination = "/etc/"
}
}
