variable "region" {
  description = "AWS region to deploy to (e.g. ap-southeast-2)"
}

variable "name" {
  description = "Name of project (used in AWS resource names)"
}

variable "kms_key_arns" {
  description = "Array of KMS Key ARNs used to decrypt secrets specified via ssm_parameter_arns variable"
}

variable "ssm_parameter_arns" {
  description = "Array of SSM Parameter ARNs used to set secret build environment variables via SSM Parameter Store"
}

variable "build_docker_image" {
  description = "Docker image to use as build environment"
}

variable "build_docker_tag" {
  description = "Docker image tag to use as build environment"
}

variable "source_type" {
  description = "Type of repository that contains the source code to be built. Valid values for this parameter are: CODECOMMIT, CODEPIPELINE, GITHUB or S3."
  default     = "GITHUB"
}

variable "buildspec" {
  description = "The CodeBuild build spec declaration path - see https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html"
}

variable "source_location" {
  description = "HTTPS URL of CodeCommit repo or S3 bucket to use as project source"
}

variable "cache_bucket" {
  description = "S3 bucket to use as build cache, the value must be a valid S3 bucket name/prefix"
  default     = ""
}

variable "artifacts_dir" {
  description = "Path to folder containing Lambda function's artifacts"
}

variable "runtime" {
  description = "Runtime environment for the Lambda function. See: https://docs.aws.amazon.com/lambda/latest/dg/API_CreateFunction.html#SSS-CreateFunction-request-Runtime."
}

variable "handler" {
  description = "The function that Lambda calls to begin execution"
}

variable "environment_variables" {
  description = "A map that defines environment variables for the Lambda function"
  type        = map(string)
  default     = {}
}
