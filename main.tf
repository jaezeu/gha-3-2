terraform {
  backend "s3" {
    bucket = "sctp-tfstate-ce13"
    key    = "jaz-32-state-key.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "workshop" {
  bucket_prefix = "jaz-32-bucket"
}

