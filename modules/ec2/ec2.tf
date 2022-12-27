resource "aws_key_pair" "terra-key" {
  key_name = "aesthisia-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCtprHg8D+XA+7dT7HUc4IIUfSbslImX+buottIAcrxbQpezT/6ahVVwkeDoN0WXlaEn1xmssBcwXic9NmjgM+VhgJ+TFmtNhDeIkceoubEXZNiuzzJ1tE7xpGBnlfqvKouS6pUZ3hGwlUVJIrqmNQXoxUGwihTsF6QrOkv68PDauMqgOsqFg6idXGefCcv6hdWFSqdsK4V7gFALZGxG7SG6kO60cT6QgCUrHyQxi9TcxRl1DPiAOb+mTFHpges9wmLbvgc0m+by3YTH1IJaBiG+8s8C7Mol0tp3kBqxcXhyFGdmc5XglKR+MfkcaoQSy8zKgLTtDEbZ+04/fSs0p7TO9nSHvzwM0RcyR1FJw4ru1hre8gPWRip/nhh1YhJdJN6FoumGwkzDdsHfuKoM3QzaYe6MX9s5jP0GdenDZwvsXMgP7Y4JTafwKaqK+w2QiOPrhz7Zg7+KwB6Kj4+rAPEOigU8Zu0Ni8fS+1xeqwlgXZSkmifzBNM6cP0WR0UTFM= abhay@DESKTOP-IHJQ8I9"
}

resource "aws_instance" "aesthisia-ec2" {
  ami = var.AMI
  instance_type = "t2.micro"
  availability_zone = var.ZONE1
  key_name = aws_key_pair.terra-key.key_name
  vpc_security_group_ids = ["sg-0e990b735b6ca3015"]
  tags = {
    Name= "Aesthesia-Instance"
  }
}