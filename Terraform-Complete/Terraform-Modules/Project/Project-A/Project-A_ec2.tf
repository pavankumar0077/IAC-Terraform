module "ec2module" {
  source        = "../../Modules/ec2"
  instance_type = "t2.medium" # Here we are overriding the instance type 
}