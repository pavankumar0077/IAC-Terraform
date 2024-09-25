Terraform Format
--

 - Every time when we restart an easy to instance if you don't have elastic IP address the IP address will be changing every time when it is like stopped and start something like that so to avoid it we get a static IP address which is called elastic IP address very easy to instances.

 - AMI - The AMI of one region this will not be same with different regions
 
 - ``` terraform validate ```

 - Here we also know that terraform plan will also check the configuration before before it is executing but The thing is that why we need to use terraform validate because terraform plan also doing the same right but The thing is like if you have a lot of servers a lot of infrastructure that should be created when we are using terraform plan it will take some time to validate all that stuff and show to us so instead for the time kind of thing we can use terraform validate instead of terraform plan if the configuration is correct in the validate it will show a message like a configuration is valid so now onwards please use terraform validate then terraform plan then terraform apply with how to approve something like that OK.
 - 
 - terraform init
 - terraform fmt ( and -h flag to get more options - terraform fmt -h)
 - terraform validate
 - terraform plan
 - terraform apply (--auto-approve)
 - terraform destroy (--auto-destory), Individual resource delete or auto destroy there are some other commands based on this.
 - terraform state



