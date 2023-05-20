output "ssh-command" {
    value = { for k ,instance in module.ec2_instance: k=> join ("", ["ssh -i keypair.pem ec2-user@", instance.public_dns])

}

}

output "public-ips" {
    value = { for k ,instance in module.ec2_instance: k=>  instance.public_ip

}

}