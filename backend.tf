terraform {
  backend "s3" {
    bucket = "tarun-tfbackend"
    key = "terraform/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
    dynamodb_table = "Terraform-Backend-lock"
    
  }
}
