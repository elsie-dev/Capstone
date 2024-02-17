resource "aws_eks_cluster" "capstone_cluster" {
name = "capstone-cluster"
role_arn = aws_iam_role.capstone_cluster_role.arn

vpc_config {
subnet_ids = ["subnet-10.0.101.0/24", "subnet-10.0.102.0/24"]
}
}

