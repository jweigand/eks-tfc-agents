
/*
data "aws_caller_identity" "current" {}

output "aws_id" {
  value = data.aws_caller_identity.current
}
*/

resource "null_resource" "read_vars" {
  provisioner "local-exec" {
    command = "echo $AWS_ROLE_ARN $AWS_WEB_IDENTITY_TOKEN_FILE"
  }
}

resource "null_resource" "all_vars" {
  provisioner "local-exec" {
    command = "env"
  }
}