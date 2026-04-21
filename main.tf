module "dev-app" {
  source = "./module"
  env = "dev"
  ami_id = "ami-05d2d839d4f73aafb"
  instance_type  = "t3.micro"
  instance_count = 1 
}

module "stage-app" {
  source = "./module"
  env = "stg"
  ami_id = "ami-05d2d839d4f73aafb"
  instance_type  = "t3.micro"
  instance_count = 2
}

module "prod-app" {
  source = "./module"
  env = "prd"
  ami_id = "ami-05d2d839d4f73aafb"
  instance_type  = "t3.micro"
  instance_count = 3
}