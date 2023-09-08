variable aws_region {
  description = "This is aws region"
  default     = "us-west-2"
  type        = string
}
variable "profile" {
  description = "user account to use"
  default = "default"
}
variable "jenkins_ami" {
 description = "Jenkins ami" 
 default = ""
}
variable "nexus_ami" {
 description = "nexus ami" 
 default = ""
}
variable aws_instance_type {
  description = "This is aws ec2 type "
  default = "t2.medium"
  type        = string
}

variable aws_key {
  description = "Key in region"
  default     = "my_ec2_key"
  type        = string
}

variable qa_server {
  description = "if qa server can be created"
  default     = false
  type        = bool
}

variable uat_server {
  description = "if qa server can be created"
  default     = false
  type        = bool
}
variable nexus_server {
description = "if nexus server can be created"
  default     = false
  type        = bool
}

