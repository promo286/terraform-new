# #example 1
# resource "aws_iam_user" "test" {
#     count= 5
#     name     = "iamuser.${count.index}"
  
# }

# output "user_arns" {
#     value = aws_iam_user.test[*].arn
# }
# #example 2
# resource "aws_instance" "demo-server" {
#     ami= "ami-0fc5d935ebf8bc3bc"
#     instance_type = "t2.medium"
#     for_each = toset(["jenkins-master","build-server", "ansible"])
    
#     tags ={
#         Name = "${each.key}"
#     }

#     }
# #example 3
# variable "my-map" {
#   default = {
#     key  = "value"
#     key1 = "value1"
#   }
# }

# resource "aws_instance" "web" {
#   for_each      = var.my-map
#   ami           = each.value
#   instance_type = "t3.micro"

#   tags = {
#     Name = each.key
#   }
# }
# #example 4

# variable "user_names" {
#     type = set(string)
#     default = ["alice","bob","john","james"]
# }

# resource "aws_iam_user" "this" {
#     for_each = var.user_names
#     name = each.value
# }

# output "arns" {
#     value       = [for user in aws_iam_user.this : user.arn]
#     description = "The ARNs of all IAM users"
# }

