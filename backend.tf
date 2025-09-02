terraform {
  backend "s3" {
    bucket         = "humynex-terraform-state"   # your S3 bucket
    key            = "eks/terraform.tfstate"     # path inside the bucket
    region         = "ap-south-1"               # your region
    dynamodb_table = "terraform-locks"  # DynamoDB table for state locking
    encrypt        = true
  }
}
