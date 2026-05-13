module "vpc" {
  source = "../../modules/vpc"

  vpc_cidr = "10.0.0.0/16"
  vpc_name = "dev-vpc"

  public_subnet_cidr  = "10.0.1.0/24"
  private_subnet_cidr = "10.0.2.0/24"

  availability_zone = "ap-south-1a"

public_subnet_2_cidr  = "10.0.3.0/24"
private_subnet_2_cidr = "10.0.4.0/24"

availability_zone_2 = "ap-south-1b" 
}

module "eks" {
  source = "../../modules/eks"

  cluster_name    = "dev-eks-cluster"
  cluster_version = "1.33"

  subnet_ids = [
    module.vpc.public_subnet_id,
    module.vpc.private_subnet_id,
    module.vpc.public_subnet_2_id,
    module.vpc.private_subnet_2_id
  ]

  node_group_name = "dev-node-group"

  desired_size = 2
  max_size     = 3
  min_size     = 1

  instance_types = ["t3.medium"]
}