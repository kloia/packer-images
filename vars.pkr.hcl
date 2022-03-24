variable "additional_disk_size" {
  type    = string
  default = ""
}

variable "docker_version" {
  type    = string
  default = ""
}
variable "docker_version_ami_name" {
  type    = string
  default = ""
}

variable "image_version" {
  type    = string
  default = ""
}

variable "open_file_limit" {
  type    = string
  default = ""
}

variable region {
  type    = string
  default = ""
}

variable ami_name{
  type = string
  default = ""
}

variable access_key {
  type    = string
  default = ""

}

variable secret_key {
  type    = string
  default = ""
}

variable "role_arn" {
  type = string
  default = ""
}

variable "vpc_id" {
  type    = string
  default = ""
}

variable "subnet_id" {

  type    = string
  default = ""

}

variable "source_ami" {
  type    = string
  default = ""
}

variable "instance_type" {
  type    = string
  default = ""
}

variable "ssh_username" {
  type    = string
  default = ""
}
