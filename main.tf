##############################################################################################
##VPC##
##############################################################################################

resource "aws_vpc" "sample_VPC" {
  cidr_block           = var.cidr
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support   = var.enable_dns_support

  tags = {
    Name = var.vpc_name
  }
}


################################################################################################
##Internet gateway ##
################################################################################################

resource "aws_internet_gateway" "sample_IGW" {
  vpc_id = aws_vpc.sample_VPC.id
  tags = {
    "Name" = var.igw_tag
  }
}