provider "aws" {
   region = "ap-south-1"
}
module "instance" {
  source = "../../module/module_instance_launch"
} 
