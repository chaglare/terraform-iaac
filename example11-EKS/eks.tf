data "aws_eks_cluster" "eks" {
  name = module.eks.cluster_id
}

data "aws_eks_cluster_auth" "eks" {
  name = module.eks.cluster_id
}

provider "kubernetes" {
  host                   = data.aws_eks_cluster.eks.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.eks.certificate_authority[0].data)
  token                  = data.aws_eks_cluster_auth.eks.token
}

module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  # version         = "12.0.0"
  cluster_name    = "${var.cluster_name}"
  cluster_version = "${var.cluster_version}"
  subnets         = "${var.subnets}"
  vpc_id          = "${var.vpc_id}"
  worker_groups = [{
    instance_type = "${var.instance_type}"
    asg_max_size  = "${var.asg_max_size}"
    asg_min_size  = "${var.asg_min_size}"
    }
  ]
}