resource "aws_instance" "ec2_prod_root" {
  ami           = "ami-076754bea03bde973"
  instance_type = "t3.micro"
}
