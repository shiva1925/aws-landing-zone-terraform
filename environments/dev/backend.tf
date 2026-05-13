terraform {
  backend "s3" {
    bucket         = "shiva-terraform-state-bucket-2026"
    key            = "dev/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}
