## Example 1: create_before_destroy 

# resource "aws_instance" "example" {
#   ami           = "ami-085ad6ae776d8f09c" 
#   instance_type = "t2.micro"

#   lifecycle {
#     create_before_destroy = true
#   }
# }


# # Example 2: prevent_destroy

# resource "aws_s3_bucket" "example" {
#   bucket = "my-important-bucket256497132159812124ddd57"

#   lifecycle {
#     prevent_destroy = true
#   }
# }

# # Example 3: ignore_changes

# resource "aws_instance" "example" {
#   ami           = "ami-12345678"
#   instance_type = "t2.micro"
#   tags = {
#     Name = "MyInstance"
#   }

#   lifecycle {
#     ignore_changes = [tags]
#   }
# }

#  Example 4: replace_triggered_by

resource "aws_iam_user" "example" {
  name = "test-use1"
}

resource "aws_iam_user_policy_attachment" "example" {
  user       = aws_iam_user.example.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"

  lifecycle {
    replace_triggered_by = [aws_iam_user.example]
  }
}

# Example 5 : timeouts 

resource "aws_instance" "example" {
  ami           = "ami-12345678"
  instance_type = "t2.micro"

  timeouts {
    create = "10m"
    update = "5m"
    delete = "15m"
  }
}


# Example 6: count

resource "aws_instance" "example" {
  count         = 3
  ami           = "ami-12345678"
  instance_type = "t2.micro"
}
 
# Example 7: depends_on 

resource "aws_iam_user" "example" {
  name = "test-user"
}

resource "aws_iam_user_policy_attachment" "example" {
  user       = aws_iam_user.example.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"

  depends_on = [aws_iam_user.example]
}
 

# Example 8: for_each 

variable "buckets" {
  type = set(string)
  default = ["bucket1", "bucket2", "bucket3"]
}

resource "aws_s3_bucket" "example" {
  for_each = var.buckets

  bucket = each.value
}
