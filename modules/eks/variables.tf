variable "cluster_name" {
  description = "EKS Cluster Name"
  type        = string
}

variable "cluster_version" {
  description = "Kubernetes Version"
  type        = string
}

variable "subnet_ids" {
  description = "Subnet IDs for EKS"
  type        = list(string)
}

variable "node_group_name" {
  description = "EKS Node Group Name"
  type        = string
}

variable "desired_size" {
  description = "Desired number of worker nodes"
  type        = number
}

variable "max_size" {
  description = "Maximum worker nodes"
  type        = number
}

variable "min_size" {
  description = "Minimum worker nodes"
  type        = number
}

variable "instance_types" {
  description = "EC2 instance types for worker nodes"
  type        = list(string)
}