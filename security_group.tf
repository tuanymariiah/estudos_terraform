resource "aws_vpc" "main" {
  cidr_block =  "10.0.0.0/16"
}

resource "aws_subnet" "subnet_rds_1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"  # Exemplo de CIDR block para a subnet 1
  availability_zone = "us-east-1a"

  tags = {
    Name = "My Subnet 1"
  }
}

resource "aws_subnet" "subnet_rds_2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.2.0/24"  # Exemplo de CIDR block para a subnet 2
  availability_zone = "us-east-1b"

  tags = {
    Name = "My Subnet 2"
  }
}

resource "aws_security_group" "postgres" {
  name_prefix        = "postgres-sg-"
  description        = "postgres"
  vpc_id              = aws_vpc.main.id

  /*ingress {
    from_port        = 0
    to_port          = 0

    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
   egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }*/

  tags = {
    Name = "Security Group PostgreSQL"
  }
}
