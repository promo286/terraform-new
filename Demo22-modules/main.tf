module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.33.1"

  cluster_name    = "my-eks-cluster"
  cluster_version = "1.27"

  vpc_id     = "vpc-0c14bb32b9ccacf49" # Replace with your actual VPC ID
  subnet_ids = ["subnet-0e42cdbbc4956bafd", "subnet-0a58b188ed119876f", "subnet-05c0b255983def46c", "subnet-09f461732d5ff1518"]
  eks_managed_node_groups = {
    worker_group = {
      instance_types = ["t3.medium"]
      min_size       = 2 # Minimum number of nodes
      max_size       = 5 # Maximum number of nodes
      desired_size   = 3 # Initial number of nodes

      tags = {
        Terraform   = "true"
        Environment = "dev"
        Name= "my-eks-cluster-node-group"
      }
    }
  }
}

# module "ec2-instance" {
#   source  = "terraform-aws-modules/ec2-instance/aws"
#   version = "5.7.1"
#   ami = "ami-04b4f1a9cf54c11d0"
#   instance_type = "t2.small" 
# }

# output "ip" {
#   value = module.ec2-instance.public_ip  
# }

