provider "aws" {
  region = "us-east-2"
}

module "ec2_dev" {
  source = "../../modules/ec2"

  ami           = "ami-0ec10929233384c7f"
  instance_type = "t2.micro"
  name          = "dev-server"
  env           = "dev"
}
