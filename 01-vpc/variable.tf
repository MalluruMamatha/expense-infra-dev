variable "project_name" {
    type = string
  default = "expense"
}
variable "environment" {
    type = string
  default = "dev"
}

variable "common_tags" {
  type = map
  default = {
    Project = "expense"
    Terraform = "true"
    Environment = "dev"
  }
}

variable "public_subnet_cidrs" {
  type = list
  default = ["10.0.16.0/24","10.0.17.0/24"]
  
}

variable "private_subnet_cidrs" {
   type = list
  default = ["10.0.24.0/24","10.0.25.0/24"]
  
}

variable "database_subnet_cidrs" {
   type = list
  default = ["10.0.32.0/24","10.0.33.0/24"]
  
}



