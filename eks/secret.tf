resource "aws_secretsmanager_secret" "demo" {
  name = "demo"
}



resource "aws_secretsmanager_secret_version" "demo" {
  secret_id     = aws_secretsmanager_secret.demo.id
  secret_string = jsonencode(var.secret)
}

variable "secret" {
  default = {
    clientId = "this_is_the_client_ID_value"
    clientSecret = "this_is_the_client_Secret_value"
  }

  type = map(string)
}