data "aws_s3_bucket" "bucket" {
    bucket = "snores-bucket-iac-${terraform.workspace}"
}