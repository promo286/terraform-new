## What is Terraform?

Terraform is an open-source infrastructure as code software tool created by HashiCorp. It allows users to define and provision data center infrastructure using a high-level configuration language known as HashiCorp Configuration Language (HCL), or optionally JSON.

## Use Case: Provisioning AWS Services

Terraform can be used to provision various AWS services. Below is an example of how to use Terraform to create an AWS EC2 instance.

### Example: Provisioning an AWS EC2 Instance

1. **Install Terraform**: Follow the instructions on the [Terraform website](https://www.terraform.io/downloads.html) to install Terraform.

2. **Configure AWS Credentials**: Ensure your AWS credentials are configured. You can do this by setting environment variables or using the AWS credentials file.

3. **Create a Terraform Configuration File**: Create a file named `main.tf` with the following content:

    ```hcl
    provider "aws" {
      region = "us-west-2"
    }

    resource "aws_instance" "example" {
      ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI
      instance_type = "t2.micro"

      tags = {
        Name = "example-instance"
      }
    }
    ```

4. **Initialize Terraform**: Run the following command to initialize the Terraform working directory:

    ```sh
    terraform init
    ```

5. **Apply the Configuration**: Run the following command to apply the configuration and create the resources:

    ```sh
    terraform apply
    ```

    You will be prompted to confirm the action. Type `yes` to proceed.

6. **Verify the Instance**: After the apply command completes, you can verify the instance has been created by checking the AWS Management Console.

7. **Clean Up**: To destroy the resources created by Terraform, run the following command:

    ```sh
    terraform destroy
    ```

    You will be prompted to confirm the action. Type `yes` to proceed.

