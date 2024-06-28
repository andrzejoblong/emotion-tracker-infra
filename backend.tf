terraform {
  backend "s3" {
    bucket = "your-terraform-state-bucket"
    key    = "emotion-tracker/terraform.tfstate"
    region = "us-east-1"
  }
}
