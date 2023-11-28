module "tfc-cloud-agent" {
  source = "github.com/jweigand/terraform-kubernetes-tfc-cloud-agent"

  name            = "tfc-agent"
  tfc_agent_token = data.aws_secretsmanager_secret_version.tfc_agent_token_eks.secret_string
}

data "aws_secretsmanager_secret" "tfc_agent_token_eks" {
  name = "tfc_agent_token_eks"
}

data "aws_secretsmanager_secret_version" "tfc_agent_token_eks" {
  secret_id = data.aws_secretsmanager_secret.tfc_agent_token_eks.id
}