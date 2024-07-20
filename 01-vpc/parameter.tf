resource "aws_ssm_parameter" "vpc_id" {
  name  = "/${var.project_name}/${var.environment}/vpc_id"
  type  = "String"
  value = module.vpc_test.vpc_id
}

resource "aws_ssm_parameter" "public_subnet_ids" {
  name  = "/${var.project_name}/${var.environment}/public_subnet_ids"
  type  = "StringList"
  value = join("," ,module.vpc_test.public_subnet_ids) # converting list to string list
}
#["id1","id2"] terraform format
# id1, id2 -> AWS SSM format
resource "aws_ssm_parameter" "private_subnet_ids" {
  name  = "/${var.project_name}/${var.environment}/private_subnet_ids"
  type  = "StringList"
  value = join("," ,module.vpc_test.private_subnet_ids) # converting list to string list
}

resource "aws_ssm_parameter" "db_subnet_group_name" {
  name  = "/${var.project_name}/${var.environment}/db_subnet_group_name"
  type  = "String"
  value = module.vpc_test.database_subnet_group_name
}

resource "aws_ssm_parameter" "igw_id" {
  name  = "/${var.project_name}/${var.environment}/igw_id"
  type  = "String"
  value = module.vpc_test.igw_id
}