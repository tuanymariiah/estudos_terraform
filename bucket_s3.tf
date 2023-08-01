resource "aws_s3_bucket" "scripts-077397826950" {
  bucket            = "scripts-077397826950"
  acl               = "private"

  tags = {
    Name            = "scripts bucket"
    Environment     = "Dev"
  }
}

resource "aws_s3_bucket" "landing-077397826950" {
  bucket            = "landing-077397826950"
  acl               = "private"

  tags = {
    Name            = "landing bucket"
    Environment     = "Dev"
  }
}

resource "aws_s3_bucket" "raw-077397826950" {
  bucket            = "raw-077397826950"
  acl               = "private"

  tags = {
    Name            = "raw bucket-077397826950"
    Environment     = "Dev"
  }
}

resource "aws_s3_bucket" "trusted-077397826950423" {
  bucket            = "trusted-077397826950423"
  acl               = "private"

  tags = {
    Name            = "trusted bucket"
    Environment     = "Dev"
  }
}