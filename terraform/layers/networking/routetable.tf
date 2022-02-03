resource "aws_route_table" "this" {
  vpc_id = aws_vpc.main_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.this.id
  }
}

resource "aws_route_table_association" "invalid" {
  subnet_id      = aws_subnet.invalid-this[count.index].id
  route_table_id = aws_route_table.this.id
  count = 3
}
resource "aws_route_table_association" "valid" {
  subnet_id      = aws_subnet.valid-this[count.index].id
  route_table_id = aws_route_table.this.id
  count = 3
}