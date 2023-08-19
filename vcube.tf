provider "aws" {
  region     = "us-east-2"
  access_key = "AKIA5R3FYQUUC5JAVVOR"
  secret_key = "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"
}

# Creating a bucket
/* resource "aws_s3_bucket" "web" {
      bucket = "s3bucketviaterraform"
      acl    = "private"   # or can be "public-read"
  tags = {
    Name        = "My bucket"
    Environment = "Dev" 
  }  */

#creating an ec2 instance
  resource "aws_instance" "web" {
  ami           = "ami-024e6efaf93d85776"
  instance_type = "t2.micro"
  key_name      = "KeyPair4alltools"
  tags = {
    Name = "ec2viaterraform"
  } 
}
