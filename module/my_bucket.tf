resource "aws_s3_bucket" "my_bucket" {
  bucket = "${var.env}-saksham-singh-bucket-sakshams-bucket"  # Bucket name is dynamically generated using environment variable
  tags = {
    Name        = "My bucket"
    Environment = var.env # Differentiates dev, stg, prd
  }
}