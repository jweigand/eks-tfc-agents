module "tfc-cloud-agent" {
  source = "github.com/jweigand/terraform-kubernetes-tfc-cloud-agent"

  name            = "tfc-agent"
  tfc_agent_token = data.aws_secretsmanager_secret_version.tfc_agent_token_eks.secret_string
  agent_image = "johnweigand349/tfc-agent-eks-irsa:latest"
  service_account_annotations = {
    "eks.amazonaws.com/role-arn" = module.iam_eks_role.iam_role_arn
  }
}

data "aws_secretsmanager_secret" "tfc_agent_token_eks" {
  name = "tfc_agent_token_eks"
}

data "aws_secretsmanager_secret_version" "tfc_agent_token_eks" {
  secret_id = data.aws_secretsmanager_secret.tfc_agent_token_eks.id
}