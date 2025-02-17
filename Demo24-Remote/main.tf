# The remote-exec provisioner runs commands on the remote instance

resource "aws_instance" "example" {
  ami           = "ami-053a45fff0a704a47" # Update with a valid AMI ID
  instance_type = "t2.micro"
  key_name      = "testing" 
  vpc_security_group_ids  = ["sg-00e5a37cc92cf9cf4"]

  connection {
    type        = "ssh"
    user        = "ec2-user" # Use 'ubuntu' for Ubuntu AMIs
    private_key = file("./testing.pem")
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo yum update -y && sudo yum install -y nginx && sudo systemctl start nginx && sudo systemctl enable nginx",
      "echo 'Hello from Terraform' > /tmp/terraform-test.txt"
    ]
  }

  tags = {
    Name = "RemoteExecExample"
  }
}

output "ip" {
  value = aws_instance.example.public_ip
  
}

# # example 2 

# resource "aws_instance" "example" {
#   ami           = "ami-0c55b159cbfafe1f0" # Replace with a valid AMI ID
#   instance_type = "t2.micro"
#   key_name      = "my-key" # Replace with your key pair name

#   # SSH Connection Block
#   connection {
#     type        = "ssh"
#     user        = "ec2-user" # Use 'ubuntu' for Ubuntu AMIs
#     private_key = file("~/.ssh/my-key.pem")
#     host        = self.public_ip
#   }

#   # File Provisioner - Copy local file to remote server
#   provisioner "file" {
#     source      = "setup.sh"              # Local file (Ensure this file exists)
#     destination = "/home/ec2-user/setup.sh" # Remote path
#   }

#   tags = {
#     Name = "FileProvisionerExample"
#   }
# }

