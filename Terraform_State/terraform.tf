terraform {
  backend "s3" {
    bucket = "kodekloud-terraform-state-backet01"
    key = "finance/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "state-locking"
  }
}
# Here we store the state file in the s3 bucket inn aws
