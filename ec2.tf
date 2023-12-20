resource "aws_instance" "web" {
  ami           = "ami-0505148b3591e4c07"
  instance_type = "t2.micro"
  #security_groups = ["aws_security_group.terraform-sg.name"]
  key_name = aws_key_pair.terraform-key.key_name
  subnet_id = aws_subnet.public-subnet.id
  vpc_security_group_ids = [aws_security_group.terraform-sg.id]

  tags = {
    Name = var.instance_name
  }
}
