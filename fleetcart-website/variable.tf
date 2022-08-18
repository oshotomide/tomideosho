# vpc variables
variable "vpc_cidr" {
  default       = "10.0.0.0/16"
  description   = "vpc cidr block"
  type          = string
}

variable "public_subnet_az1_cidr" {
  default       = "10.0.0.0/24"
  description   = "public subnet az1 cidr block"
  type          = string
}

variable "public_subnet_az2_cidr" {
  default       = "10.0.1.0/24"
  description   = "public subnet az2 cidr block"
  type          = string
}

variable "private_app_subnet_az1_cidr" {
  default       = "10.0.2.0/24"
  description   = "private app subnet az1 cidr block"
  type          = string
}

variable "private_app_subnet_az2_cidr" {
  default       = "10.0.3.0/24"
  description   = "private app subnet az2 cidr block"
  type          = string
}

variable "private_data_subnet_az1_cidr" {
  default       = "10.0.4.0/24"
  description   = "private data subnet az1 cidr block"
  type          = string
}

variable "private_data_subnet_az2_cidr" {
  default       = "10.0.5.0/24"
  description   = "private data subnet az2 cidr block"
  type          = string
}

# security group variables
variable "ssh_location" {
  default       = "0.0.0.0/0"
  description   = "ip address that can ssh into the ec2 instances"
  type          = string
}

# rds variables
variable "database_snapshot_identifier" {
  default       = "arn:aws:rds:us-east-1:074869464423:snapshot:demo-db-final-snapshot"
  description   = "database snapshot arn"
  type          = string
}

variable "database_instance_class" {
  default       = "db.t2.micro"
  description   = "database instance type"
  type          = string
}

variable "database_instance_identifier" {
  default       = "demo-db"
  description   = "database instance identifier"
  type          = string
}

variable "multi_az_deployment" {
  default       = false
  description   = "create a standby db instance"
  type          = bool
}

# application load balancer variables
variable "ssl_certificate_arn" {
  default       = "arn:aws:acm:us-east-1:074869464423:certificate/851ecd09-089c-45f6-ab85-07a37b856a5c"
  description   = "ssl certificate arn"
  type          = string
}

# sns topic variables
variable "operator_email" {
  default       = "tejude2000@yahoo.com"
  description   = "a valid email address"
  type          = string
}

# auto scaling group variables
variable "launch_template_name" {
  default       = "dev-launch-template"
  description   = "launch template name"
  type          = string
}
 
variable "ec2_image_id" {
  default       = "ami-06070cab5adcf4e42"
  description   = "ami id"
  type          = string
}

variable "ec2_instance_type" {
  default       = "t2.micro"
  description   = "ec2 instance type"
  type          = string
}

variable "ec2_key_pair_name" {
  default       = "richmond-keypair"
  description   = "ec2 key pair name"
  type          = string
}

# route 53 variables
variable "domain_name" {
  default       = "tejude80.com"
  description   = "domain name"
  type          = string
}

variable "record_name" {
  default       = "www"
  description   = "sub domain name"
  type          = string
}