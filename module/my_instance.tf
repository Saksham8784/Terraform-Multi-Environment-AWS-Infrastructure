resource "aws_instance" "example_server" {
  count = var.instance_count   # Creates multiple instances depending on environment
  ami           = var.ami_id   # AMI ID passed as variable
  instance_type = var.instance_type   # Instance type (e.g., t3.micro)

  tags = {
    Name = "${var.env}-ec2"   # Tags for identification

  }
}
