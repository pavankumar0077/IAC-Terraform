### Creating resources using terraform in Github

- So we can create resources using terraform in multiple providers like Awls Azure GCP Oracle Cloud Alibaba something like that and even Github all that stuff we can create resources and we have a lot of provides its provided by Terraform.
- So the configuration needed to create a Github Repo or a Github related resource the configuration needed is like we need an authentication token so we need to create a token in the developer option and we need to place the token in vars.tf file or something like that or we can directly give the token for example purpose
- So here are few commands that might be very useful
- ```
  terraform plan

  terraform apply 

  terraform apply -refresh-only

  terraform apply 
  ```

## Here if we observe carefully as we all know we have apply auto approval for the apply as well and for the destroy as well we have this command so above we have an example of commands.
