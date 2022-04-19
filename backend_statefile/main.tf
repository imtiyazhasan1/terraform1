terraform {
  backend "s3" {
   bucket = "imtiyaz-tf-test-bucket"  
   key = "global/s3/terraform.tfstate"
   region  = "ap-south-1"
   dynamodb_table = "terraform_lock"
   encrypt = true
}
 
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.10.0"
    }
  }
}
provider "aws" {
  region = "ap-south-1"
}
