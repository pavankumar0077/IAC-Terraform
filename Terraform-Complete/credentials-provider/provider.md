PROVIDER
==
- As we all know in the production environment we need to use like specific version of provider.
- ``` https://registry.terraform.io/providers/hashicorp/aws/latest/docs ```
- ```
terraform {

  required_version = "~> 1.1.4"  

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.67.0"
    }
  }
}

provider "aws" {
  # Configuration options
}
```

```
PS D:\Pavan-Files\AWS-Devops-YT-Abhi\Pavan-Learnings\IAC-Terraform\Terraform-Complete> terraform --version
Terraform v1.9.5
on windows_amd64
```

- As you can see here I have added added required version so I have added required version and required provider as well with specific version you can also see my terraform current version as well so based upon that introduction environment we need to maintain this kind of like versions so that there will be no issues.