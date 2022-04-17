variable "ami" {
 description = "An example of a string variable"
 type = string
 default = "ami-04a223c5825a793bc" 
}
variable "cidr" {
 description = "Define the CIDR block for VPC"
 type = string
 default = "10.0.0.0/16"
}
variable "tags" {
 description = "An example of map string"
 type = map(string)
 default = {
    name = "test"
    environment = "prod"
    security = "I-Z"
}
}
variable "instance_type" {
  description = "Set the instance type as a string"
  type = string
  default =  "t2.micro"
} 
output "private_ip" {
  value = aws_instance.webserver.private_ip
  description = "The Private IP address of the web server"
  sensitive = true 
}
output "sg" {
  value = aws_security_group.instance.id
  }
