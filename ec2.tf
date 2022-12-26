resource "aws_key_pair" "terra-key" {
  key_name = "aesthisia-key"
  public_key = file("terra-key.pub")
}

resource "aws_instance" "aesthisia-ec2" {
  ami = var.AMI[var.REGION]
  instance_type = "t2.micro"
  availability_zone = var.ZONE1
  key_name = aws_key_pair.terra-key.key_name
  vpc_security_group_ids = ["sg-0e990b735b6ca3015"]
  tags = {
    Name= "Aesthesia-Instance"
  }
}