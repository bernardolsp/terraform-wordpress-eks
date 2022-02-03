resource "aws_subnet" "valid-this" {
  for_each          = { for index, az in var.valid_azs : index => az }
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = each.value.ip
  availability_zone = each.value.az
  tags = {
    Name      = "eks-in-${each.value.az}",
    ManagedBy = "Terraform"
  }
}


resource "aws_subnet" "invalid-this" {
  for_each          = { for index, az in var.invalid_azs : index => az }
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = each.value.ip
  availability_zone = each.value.az
  tags = {
    Name      = "invalid-in-${each.value.az}",
    ManagedBy = "Terraform"
  }
  depends_on = [
    aws_vpc_ipv4_cidr_block_association.invalid_cidr
  ]

<<<<<<< HEAD
}
=======
}

>>>>>>> 564b68fcd5a8c07e3d544c9d4c3c60e5aadc678a
