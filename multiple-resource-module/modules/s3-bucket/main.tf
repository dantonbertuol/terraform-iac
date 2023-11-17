resource "aws_s3_bucket" "djb_bucket" {
  bucket = var.bucket_name
  tags   = var.tags
}
