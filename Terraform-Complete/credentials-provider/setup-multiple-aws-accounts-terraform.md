Configure Multiple AWS Accounts 

 

1. Configure Multiple AWS CLI Profiles 

You can configure multiple AWS profiles using the AWS CLI. Each profile corresponds to a different set of AWS credentials and settings. 

Run the following command for each profile you want to set up: 

aws configure list-profiles 

  

aws configure --profile profile_name 
 

Replace profile_name with the name of the profile you want to create. You'll be prompted to enter the AWS Access Key ID, Secret Access Key, default region name, and output format for the profile. 

For example: 

 

  

aws configure --profile profile1 
 

You’ll be prompted to enter: 

AWS Access Key ID 

AWS Secret Access Key 

Default region name (e.g., us-west-2) 

Default output format (e.g., json) 

Repeat this process for other profiles: 

 

  

aws configure --profile profile2 
 

2. Use AWS Profiles in Terraform 

In your Terraform configuration, you can specify which AWS profile to use by setting the profile attribute in the provider block. 

Here’s how you can configure it: 

hcl 

  

provider "aws" { 
  profile = "profile1" # Specify the AWS profile to use 
  region  = "us-west-2" 
} 
 
resource "aws_s3_bucket" "example" { 
  bucket = "my-bucket-profile1" 
  acl    = "private" 
} 
 

If you need to switch profiles, you would change the profile attribute: 

hcl 

  

provider "aws" { 
  profile = "profile2" 
  region  = "us-east-1" 
} 
 
resource "aws_s3_bucket" "example" { 
  bucket = "my-bucket-profile2" 
  acl    = "private" 
} 
 

3. Alternative: Using Environment Variables 

Instead of specifying the profile in your Terraform configuration, you can set the AWS_PROFILE environment variable to the profile you want to use. This is particularly useful for switching profiles without modifying Terraform configuration files. 

To set the environment variable in your shell: 

 

  

export AWS_PROFILE=profile1 
 

Then, run Terraform commands as usual: 

 

  

terraform init 
terraform apply 
 

For a different profile, change the AWS_PROFILE variable: 

 

  

export AWS_PROFILE=profile2 
terraform apply 

 

 