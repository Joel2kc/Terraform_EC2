resource "aws_key_pair" "terraform-key" {
  key_name   = "terraform-key"
  public_key = tls_private_key.rsa.public_key_openssh
}

# RSA key of size 4096 bits
resource "tls_private_key" "rsa" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "terraform-key" {
  content  = tls_private_key.rsa.private_key_pem
  filename = "terraform_key"
}