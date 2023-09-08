# print the url of the server
output "jenkins_ssh_connection_command" {
  value     = join ("", ["ssh -i instance_key_pair.pem ec2-user@", aws_instance.jenkins_ec2_instance.public_dns])
}
# print the url of the jenkins server
output "jenkins_url" {
  value     = join ("", ["http://", aws_instance.jenkins_ec2_instance.public_dns, ":", "8080"])
}

# print the url of the nexus server
output "nexus_ssh_connection_command" {
  value     = var.nexus_server ? join ("", ["ssh -i instance_key_pair.pem ec2-user@", aws_instance.nexus_ec2_instance[0].public_dns]) : null
}
# print the url of the jenkins server
output "nexus_url" {
  value     = var.nexus_server ? join ("", ["http://", aws_instance.nexus_ec2_instance[0].public_dns, ":", "8081"]) : null
}

# print the url of the jenkins server
output "ssh_connection_uat_command" {
  value     = var.uat_server ? join("", ["ssh -i instance_key_pair.pem ec2-user@", aws_instance.uat_server[0].public_dns]) : null  
}

# print the url of the qa server
output "ssh_connection_qa_command" {
  value     = var.qa_server ? join("", ["ssh -i instance_key_pair.pem ec2-user@", aws_instance.qa_server[0].public_dns]) : null  
}
