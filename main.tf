# Configure the AWS Provider
provider "aws" {
    region  = "af-south-1"
    
}

# Create a VPC
resource "aws_vpc" "Terrafrom_Vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_default_subnet" "Private_Subnet1" {
  availability_zone = "af-south-1a"

  tags = {
    Name = "subnet for Main application"
  }
}
resource "aws_default_subnet" "Public_Subnet1" {
  availability_zone = "af-south-1a"

  tags = {
    Name = "subnet for Load balancer"
  }
}
resource "aws_default_subnet" "Private_Subnet2" {
  availability_zone = "af-south-1a"

  tags = {
    Name = " subnet for Database"
  }
}

resource "aws_s3_bucket" "Storage" {
  bucket = "my-tf-storage"

  tags = {
    Name        = "My bucket"
    Environment = "Developnment"
  }
}

