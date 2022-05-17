source "amazon-ebs" "amazon-k8s-environment" {
  access_key     = var.access_key
  secret_key     = var.secret_key
  #assume_role {
  #      role_arn     = var.role_arn
  #}
  region         = var.region
  vpc_id         = var.vpc_id
  subnet_id      = var.subnet_id
  source_ami     = var.source_ami
  instance_type  = var.instance_type
  ssh_username   = var.ssh_username
  ami_name       = var.ami_name
  metadata_options {
    http_endpoint               = "enabled"
    http_tokens                 = "required"
    http_put_response_hop_limit = 1
  }
  
  launch_block_device_mappings {
    device_name           = "/dev/sda1"
    volume_size           = 500
    volume_type           = "gp3"
    delete_on_termination = true
  }
}

build {
  sources = [
    "sources.amazon-ebs.amazon-k8s-environment",
  ]

  provisioner "file" {
    source      = "./files/k8s-sysctl.conf"
    destination = "/tmp/k8s.conf"
  }

  provisioner "shell" {
    environment_vars = [
      "OPEN_FILE_LIMIT=${var.open_file_limit}",
    ]
    script = "./scripts/filelimit.sh"
  }

  provisioner "shell" {
    script = "./scripts/logrotate.sh"
  }

  provisioner "shell" {
    script = "./scripts/timezoneconfig.sh"
  }

  post-processor "manifest"  {
    output = "manifest.json"
  }

}
