resource "aws_security_group" "ec2" {
  name_prefix = "ec2-sg-"
  vpc_id      = aws_vpc.main.id

  # Regra de entrada para permitir tráfego na porta 5432 do PostgreSQL
  /*ingress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]  # Permitir tráfego de qualquer endereço IP
  }*/
}

resource "aws_db_subnet_group" "db_pipeline" {
  name       = "subnet_group"  # Substitua pelo nome desejado para o grupo de subnets
  subnet_ids = [aws_subnet.subnet_rds_1.id, aws_subnet.subnet_rds_2.id]
}

resource "aws_db_parameter_group" "db_pipeline" {
  name   = "basededados"
  family = "postgres14"

  parameter {
    name  = "log_connections"
    value = "1"
  }
}

resource "aws_db_instance" "dbbasededados" {
  identifier             = "dbbasededados"
  instance_class         = "db.t3.micro"
  allocated_storage      = 5
  engine                 = "postgres"
  engine_version         = "14"
  username               = "db_user"
  password               = "pass123abc"
  db_subnet_group_name   = aws_db_subnet_group.db_pipeline.name
  vpc_security_group_ids = [aws_security_group.ec2.id]
  parameter_group_name   = aws_db_parameter_group.db_pipeline.name
  skip_final_snapshot    = true
}