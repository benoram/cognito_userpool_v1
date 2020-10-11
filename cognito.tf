resource "aws_cognito_user_pool" "pool_v1" {
    provider = aws.oregon
    name = "default"

    auto_verified_attributes = ["email"]
    username_attributes = ["email"]
    username_configuration {
        case_sensitive = false
    }

    admin_create_user_config {
        allow_admin_create_user_only = true
    }

    mfa_configuration = "OPTIONAL"

    software_token_mfa_configuration {
        enabled = true
    }
}