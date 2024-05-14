variable "runner_machine_prefix" {
  type    = string
  default = "cci-runner"
}

variable "runner_machine_count" {
  type    = number
  default = 1
}

variable "create_spot_instance" {
  type    = bool
  default = false
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "ssh_public_key" {
  type    = string
  default = ""
}

variable "github_username" {
  type    = string
  default = ""
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "team" {
  type    = string
  default = "your_team_name"
}

variable "vendor" {
  type    = string
  default = "circleci-runner"
}

variable "email" {
  type    = string
  default = ""
}

variable "region" {
  type    = string
  default = "us-east-1"
}

variable "role_name" {
  type        = string
  description = "Name of the role to add to the instance profile"
  default     = null
}

variable "disk_size_gb" {
  type        = number
  default     = 50
  description = "The volume size, in GB to each runner client's /dev/sda1 disk."
}

variable "machine_image_owners" {
  type        = list(string)
  description = "List of AWS account IDs that own the images to be used for nomad virtual machines."
  default     = ["099720109477", "513442679011"]
}

variable "machine_image_names" {
  type        = list(string)
  description = "Strings to filter image names for nomad virtual machine images."
  default     = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
}

variable "allowed_ips_ssh" {
  type        = list(string)
  description = "List of IPv4 ranges that are permitted to access nomad nodes for the retry-with-ssh feature"
  default     = ["0.0.0.0/0"]
}



