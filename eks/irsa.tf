module "iam_eks_role" {
  source    = "terraform-aws-modules/iam/aws//modules/iam-role-for-service-accounts-eks"
  role_name = "tfc-agent"

  role_policy_arns = {
    policy = data.aws_iam_policy.admin.arn
  }

  oidc_providers = {
    eks = {
      provider_arn               = module.eks.oidc_provider_arn
      namespace_service_accounts = ["${module.tfc-cloud-agent.namespace}:${module.tfc-cloud-agent.service_account_name}"]
    }
  }
}

data "aws_iam_policy" "admin" {
  name = "AdministratorAccess"
}