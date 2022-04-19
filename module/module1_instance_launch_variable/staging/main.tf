provider "aws" {
   region = "ap-south-1"
}
module "instance" {
  source = "../../../module/module1_instance_launch_variable/module_instance_launch_variable"
  type = "t2.small" 
 tags = {
    environment = "stage"
    supportteam = "Testing Operations"
    security = "I-Z"
}
} 
