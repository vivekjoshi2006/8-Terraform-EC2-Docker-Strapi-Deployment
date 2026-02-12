variable "aws_region" {
  description = "AWS Region jahan server banega"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance ka size"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "Amazon Linux 2023 AMI ID"
  type        = string
  default     = "ami-0c7217cdde317cfec" # Note: Ye region ke hisaab se badal sakta hai
}