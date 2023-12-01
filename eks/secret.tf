resource "aws_secretsmanager_secret" "demo" {
  name = "demo"
}



resource "aws_secretsmanager_secret_version" "demo" {
  secret_id     = aws_secretsmanager_secret.demo.id
  secret_string = jsonencode(var.secret)
}

variable "secret" {
  default = {
    clientId = "this is the client ID value"
    clientSecret = "this is the client Secret value"
  }

  type = map(string)
}