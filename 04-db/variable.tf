variable "project_name" {
    type = string
    default = "expense"
  
}

variable "environment" {
    type = string
    default = "dev"
  
}

variable "sg_name" {
    type = string
    default = "db"
  
}


variable "common_tags" {
    type = map
    default = {
        Project = "expense"
        Environment = "dev"
        Terraform = "true"
    }
    
  
}

variable "zone_name" {
    default = "malluru.online"
  
}

