
provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = "us-east-1"

}

resource "aws_s3_bucket" "mybucket" {
  bucket = "chandradc-1040"
  acl    = "private"
  tags = {
    env        = "dev"
    created_by = "Chandra"
  }
}
