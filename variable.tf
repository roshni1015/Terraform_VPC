############################# VPC ##################################

variable "cidr" {
  description = "Enter the CIDR range required for VPC"
  type        = string
  default     = "192.168.0.0/16"
}

variable "vpc_name" {
  description = "Tag Name to be assigned with VPC"
  type        = string
  default     = "my_vpc"
}

variable "enable_dns_hostnames" {
  description = "Enter DNS hostname"
  type        = bool
  default     = null
}

variable "enable_dns_support" {
  description = "Enter DNS support"
  type        = bool
  default     = null
}

############################# Internet gateway ##################################

variable "igw_tag" {
  description = "Mention Tag needs to be associated with internet gateway"
  type        = string
  default     = "myigw"
}

############################# Public Subnet ##################################

variable "public_subnets_cidr_1" {
  description = "CIDR Blocks"
  type        = string
  default     = "192.168.1.0/24"
}

variable "map_public_ip_on_launch" {
  description = "It will map the public ip while launching resources"
  type        = bool
  default     = null
}

variable "public_subnet_tag_1" {
  description = "Tag public subnet"
  type        = string
  default     = "my_public_subnet_az_1a"
}

variable "public_subnets_cidr_2" {
  description = "CIDR Blocks"
  type        = string
  default     = "192.168.2.0/24"
}

variable "public_subnet_tag_2" {
  description = "Tag public subnet"
  type        = string
  default     = "my_public_subnet_az_1b"
}

############################# Database(Private) Subnet ##################################

variable "database_subnets_cidr_1" {
  description = "Mention the CIDR block for database subnet"
  type        = string
  default     = "192.168.4.0/24"
}


variable "database_subnet_tag_1" {
  description = "Tag Private subnet"
  type        = string
  default     = "my_database_subnet_az_1a"
}

variable "database_subnets_cidr_2" {
  description = "Mention the CIDR block for database subnet"
  type        = string
  default     = "192.168.5.0/24"
}

variable "database_subnet_tag_2" {
  description = "Tag Private subnet"
  type        = string
  default     = "my_database_subnet_az_1b"
}

############################# Public Route ##################################

variable "public_route_table_tag" {
  description = "Tag name for public route table"
  type        = string
  default     = "my_public_route_table"
}

############################# Database(Private) Route ##################################

variable "database_route_table_tag" {
  description = "Tage for database route table"
  type        = string
  default     = "my_database_route_table"
}