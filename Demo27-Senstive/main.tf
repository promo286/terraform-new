# # Terraform allows marking variables as sensitive to hide their values in logs and outputs. 
# # This is useful for handling passwords, API keys, or other secrets.

# variable "db_password" {
#   description = "Database password"
#   type        = string
#   sensitive   = true
# }

# resource "aws_db_instance" "example" {
#   identifier        = "mydb"
#   engine           = "mysql"
#   instance_class   = "db.t3.micro"
#   allocated_storage = 20
#   username         = "admin"
#   password         = var.db_password  # Using the sensitive variable

#   tags = {
#     Name = "SensitiveExampleDB"
#   }
# }


# output "database_password" {
#   value     = var.db_password
#   sensitive = true
# }

# resource "aws_iam_user" "example" {
#   name = "terraform-user"
# }

# resource "aws_iam_access_key" "example" {
#   user = aws_iam_user.example.name
# }

# output "iam_secret_key" {
#   value     = aws_iam_access_key.example.secret
#   sensitive = true
# }

# output "iam_access_key" {
#   value = aws_iam_access_key.example.id
# }

variable "db_password" {
  description = "Database password"
  type        = string
#   sensitive   = true
  default     = "SuperSecret123!"
}

output "hidden_password" {
  value     = var.db_password
#   sensitive = true
}
