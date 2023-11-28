resource "null_resource" "read_vars_again" {
  provisioner "local-exec" {
    command = "echo $AWS_ROLE_ARN $AWS_WEB_IDENTITY_TOKEN_FILE"
  }
}