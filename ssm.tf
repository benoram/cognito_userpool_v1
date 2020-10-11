resource "aws_ssm_parameter" "userpool_id" {
    provider = aws.oregon
    name  = "/cognito/default/v1/userpool/id"
    type  = "String"
    value = aws_cognito_user_pool.pool_v1.id
}

resource "aws_ssm_parameter" "userpool_arn" {
    provider = aws.oregon
    name  = "/cognito/default/v1/userpool/arn"
    type  = "String"
    value = aws_cognito_user_pool.pool_v1.arn
}
