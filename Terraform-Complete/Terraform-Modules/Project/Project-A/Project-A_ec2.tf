# module "ec2module" {
#   source        = "../../Modules/ec2"
#   instance_type = "t2.medium" # Here we are overriding the instance type 
# }

module "ec2module-github-source" {
  source = "git::https://github.com/pavankumar0077/IAC-Terraform.git//Terraform-Complete"
}

# If you want to refer the code from another branch then we need to give like
# Here we are using direct variable data so we have given variables there and we are giving value here
module "ec2module-github-source" {
  source = "git::https://github.com/pavankumar0077/IAC-Terraform.git?ref=v1"
  instance-type  = "t2.medium" 
}