variable "kubernetes_namespace" {
  description = "Kubernetes Namespace name"
  type        = string
}

variable "create_kubernetes_namespace" {
  description = "Should the module create the namespace"
  type        = bool
  default     = true
}

variable "create_kubernetes_service_account" {
  description = "Should the module create the Service Account"
  type        = bool
  default     = true
}

variable "kubernetes_service_account" {
  description = "Kubernetes Service Account Name"
  type        = string
}

variable "iam_role_path" {
  type        = string
  default     = "/"
  description = "IAM Role path"
}

variable "irsa_iam_policies" {
  type        = list(string)
  description = "IAM Policies for IRSA IAM role"
  default     = []
}

variable "irsa_iam_permissions_boundary" {
  type        = string
  default     = ""
  description = "IAM Policy ARN for IRSA IAM role permissions boundary"
}

variable "addon_context" {
  type = object({
    aws_caller_identity_account_id = string
    aws_caller_identity_arn        = string
    aws_eks_cluster_endpoint       = string
    aws_partition_id               = string
    aws_region_name                = string
    eks_cluster_id                 = string
    eks_oidc_issuer_url            = string
    eks_oidc_provider_arn          = string
    tags                           = map(string)
  })
  description = "Input configuration for the addon"
}
