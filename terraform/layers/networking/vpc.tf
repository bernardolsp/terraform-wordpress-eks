resource "aws_vpc" "main_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name      = "default-vpc",
    ManagedBy = "Terraform"
  }
}

resource "aws_vpc_ipv4_cidr_block_association" "invalid_cidr" {
  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = "100.64.0.0/16"
}