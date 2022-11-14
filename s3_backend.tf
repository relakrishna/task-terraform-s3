terraform {
    backend "s3" {
        bucket = "tfs3run"
        key = "taskterraform"
        region = "us-east-1"
        dynamodb_table = "tfs3run"
    }
  
}