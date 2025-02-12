
# Example: Import an AWS S3 Bucket
# Suppose you have an existing S3 bucket named my-existing-bucket, and you want to manage it in Terraform.

resource "aws_s3_bucket" "example" {
  bucket = "my-existing-bucket"
}


# terraform import aws_s3_bucket.example my-existing-bucket

# terraform plan
# terraform apply

