# #example 1
# resource "aws_iam_user" "test" {
#     count= 5
#     name     = "iamuser.${count.index}"
#     # name     = "iamuser"
  
# }

# output "user_arns" {
#     value = aws_iam_user.test[*].arn # splat Expression  
# }


# #example 2
# resource "aws_instance" "demo-server" {
#     ami= "ami-0fc5d935ebf8bc3bc"
#     instance_type = "t2.micro"
#     for_each = toset(["jenkins-master","demo","build-server", "ansible","docker","k8s-master"])
    
#     tags ={
#         Name = "${each.value}"
#     }

#     }
#example 3
# variable "my-map" {
#   default = {
#     ubuntu  = "ami-04b4f1a9cf54c11d0"
#     amz = "ami-085ad6ae776d8f09c"
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
#example 4

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

