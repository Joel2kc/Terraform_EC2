# variables.tf

# VPC variables
variable "vpc_name" {
  description = "Name for the VPC"
  default     = "terraform-vpc"
}

variable "public_subnet_name" {
  description = "Name for the public subnet"
  default     = "public-subnet"
}

# Internet Gateway variable
variable "igw_name" {
  description = "Name for the Internet Gateway"
  default     = "terraform-gw"
}

# Route table variables
variable "public_route_table_name" {
  description = "Name for the public route table"
  default     = "public-route"
}

# NAT Gateway variables
variable "nat_gateway_name" {
  description = "Name for the NAT Gateway"
  default     = "gw NAT"
}

# Security Group variable
variable "security_group_name" {
  description = "Name for the Security Group"
  default     = "terraform-sg"
}

# EC2 instance variable
variable "instance_name" {
  description = "Name for the EC2 instance"
  default     = "terraform-instance"
}