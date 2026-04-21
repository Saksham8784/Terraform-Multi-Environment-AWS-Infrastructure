resource "aws_dynamodb_table" "my_table" {
  name           = "${var.env}-db-table"   # Table name includes environment to avoid conflicts
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "id"   # Primary key for the table
  attribute {
    name = "id"   
    type = "S"  # S = String
  }
}
