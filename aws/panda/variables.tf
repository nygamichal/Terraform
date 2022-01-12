variable "availability_zones" {
  type = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "aws_key_name" {
  type = string
  description = "Name of key added inside AWS"
}

variable "ssh_key_path" {
  type = string
  description = "Path to SSH key"
}
