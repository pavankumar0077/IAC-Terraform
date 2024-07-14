variable "os" {
  type = string
  default = "ami-0ad21ae1d0696ad58"
  description = "This is my ami ID"
  #sensitive = true #Sensitive information hidden in the UI, But we make it sensitive we can see in the state file 
}

variable "size" {
  default = "t2.micro"
}

variable "name" {
  default = "TerraformEC2"
}

variable "bucket_name" {
  
}

variable "username" {
  
}