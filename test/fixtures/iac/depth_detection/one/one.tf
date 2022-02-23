resource "aws_subnet" "private2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "ap-northeast-1c"

  tags = {
    Name      = "terraform-example/private2"
    yor_trace = "43e3710c-6549-429b-acc3-4ffd67053344"
  }
}

resource "aws_internet_gateway" "terraform_example" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name      = "terraform-example/igw"
    yor_trace = "94f01954-730e-4a77-b544-582161872eca"
  }
}
