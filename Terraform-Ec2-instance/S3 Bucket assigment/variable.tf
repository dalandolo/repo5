variable "region" {
  type        = string
 }

variable "aws_destination_region" {
  type        = string
}
variable "force_destroy" {
  type    = bool
}
variable "common_tags" {
  description = "Common tags for all resources"
  type = map(string)
  default = {
  id             = "2008"
  owner          = "dalandolo"
  environment    = "prod"
  project        = "no name"
  create_by      = "Terraform"
  cloud_provider = "aws"
  company        = "EKS"
}