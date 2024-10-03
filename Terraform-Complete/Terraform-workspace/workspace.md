 # WORKSPACE's

- Create multiple Env's like QA, PROD, DEV
- Terraform workspace help you keeping your infrastructure consistent and use a single manifest to create many of the same things again and agina.
- Working with terraform invloves managing collections of infrastructure resources.

- ![alt text](image.png)
- Workspace commands
```
@pavankumar0077 ➜ /workspaces/IAC-Terraform/Terraform-Complete/Terraform-workspace (main) $ terraform workspace -h
Usage: terraform [global options] workspace

  new, list, show, select and delete Terraform workspaces.

Subcommands:
    delete    Delete a workspace
    list      List Workspaces
    new       Create a new workspace
    select    Select a workspace
    show      Show the name of the current workspace
```
- To create a workspace  ``` terraform workspace new dev ```, ``` terraform workspace new prod ```
- Bydefault if we create a new workspace it will move to newly created workspace, As we can see that we have created prod workspace and it is moved to prod workspace by default.
- We can use terraform select to switch between workspaces ``` terraform workspace select dev ``` 
```
@pavankumar0077 ➜ /workspaces/IAC-Terraform/Terraform-Complete/Terraform-workspace (main) $ terraform workspace new prod
Created and switched to workspace "prod"!

You're now on a new, empty workspace. Workspaces isolate their state,
so if you run "terraform plan" Terraform will not see any existing state
for this configuration.
```

- Ref doc lookup - ``` https://developer.hashicorp.com/terraform/language/functions/lookup ```
- When i have switched to other env, like ``` terraform workspace select prod ``
and ``` terraform plan ```
- we can see the t2.micro instance.

```
variable "instance_type" {
  type = map
  default = {
    default = "t2.nano"
    dev = "t2.micro"
    prod = "t2.large"
  }
}
```

```
resource "aws_instance" "my-ec2" {
  ami           = data.aws_ami.amazonami.id
  instance_type = lookup(var.instance_type, terraform.workspace)

  tags = {
    Name = "Web-Server-${terraform.workspace}"
  }
}
```

- To delete the workspace ``` terraform workspace delete prod ```
