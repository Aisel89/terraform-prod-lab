provider "aws" {
  region = "us-east-1"
}

module "ec2_prod" {
  source = "git::https://github.com/your-username/terraform-ec2-module.git"

  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t3.micro"
  name          = "prod-server"
  env           = "prod"
}
