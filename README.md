# Cognito UserPool v1

My preference is to keep the Cognito user pool seperate from continuous integration. Most changes to a user pool result in a destroy and re-create, losing user data in the process. So best just to keep this bit of automation out of the hands of OnCommit/Merge style CICD

## Notes

Once created, user pool id and ARN go into SSM Parameter Store, so the values can be reused in other bits of automation and code (see ssm.tf)
