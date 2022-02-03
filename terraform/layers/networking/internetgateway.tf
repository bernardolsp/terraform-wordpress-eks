resource "aws_internet_gateway" "this" {
  vpc_id = aws_vpc.main_vpc.id

  tags = {
    Name = "default-eks"
  }
}