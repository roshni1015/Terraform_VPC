#############################VPC##################################

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