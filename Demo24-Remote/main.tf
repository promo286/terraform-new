# The remote-exec provisioner runs commands on the remote instance

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0" # Update with a valid AMI ID
  instance_type = "t2.micro"

  connection {
    type        = "ssh"
    user        = "ec2-user" # Use 'ubuntu' for Ubuntu AMIs
    private_key = file("~/.ssh/my-key.pem")
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo yum update -y",
      "echo 'Hello from Terraform' > /tmp/terraform-test.txt"
    ]
  }

  tags = {
    Name = "RemoteExecExample"
  }
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

