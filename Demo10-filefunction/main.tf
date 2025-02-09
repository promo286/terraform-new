# resource "aws_iam_user" "this" {
#   name = "demo-user"
# }

# resource "aws_iam_user_policy" "lb_ro" {
#   name = "demo-user-policy"
#   user = aws_iam_user.this.name

#   policy = jsonencode({
#     "Version": "2012-10-17",
#     "Statement": [
#         {
#             "Action": "ec2:*",
#             "Effect": "Allow",
#             "Resource": "*"
#         },
#         {
#             "Effect": "Allow",
#             "Action": "elasticloadbalancing:*",
#             "Resource": "*"
#         },
#         {
#             "Effect": "Allow",
#             "Action": "cloudwatch:*",
#             "Resource": "*"
#         },
#         {
#             "Effect": "Allow",
#             "Action": "autoscaling:*",
#             "Resource": "*"
#         },
#         {
#             "Effect": "Allow",
#             "Action": "iam:CreateServiceLinkedRole",
#             "Resource": "*",
#             "Condition": {
#                 "StringEquals": {
#                     "iam:AWSServiceName": [
#                         "autoscaling.amazonaws.com",
#                         "ec2scheduled.amazonaws.com",
#                         "elasticloadbalancing.amazonaws.com",
#                         "spot.amazonaws.com",
#                         "spotfleet.amazonaws.com",
#                         "transitgateway.amazonaws.com"
#                     ]
#                 }
#             }
#         }
#     ]
#   })
# }




resource "aws_iam_policy" "admin_policy" {
  name        = "AdminAccessPolicy"
  description = "Provides admin access"
  policy      = file("./admin_policy.json") # Reads policy from file
}