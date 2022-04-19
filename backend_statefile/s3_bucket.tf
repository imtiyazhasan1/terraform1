resource "aws_s3_bucket" "example" {
    bucket = "imtiyaz-tf-test-bucket"
    tags = {
    Name        = "My bucket"
    Environment = "Dev"
  } 
    lifecycle {
      prevent_destroy = false 
    }
    versioning {
    enabled = true
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm     = "AES256"
      }
    }
}
  }
