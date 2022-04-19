resource "aws_instance" "test" {
     ami = "ami-04a223c5825a793bc"
     instance_type = "t2.micro"
   tags = { 
    name = "test"
    environment = "prod"
    security = "I-Z"
} 
}
