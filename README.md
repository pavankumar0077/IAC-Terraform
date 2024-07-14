# IAC-Terraform

REF LINK : ``` https://developer.hashicorp.com/terraform/language/functions ```
``` https://developer.hashicorp.com/terraform/language/values/variables ```
``` https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance ```
``` https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository ```

### RESOURCE 

![image](https://github.com/user-attachments/assets/a123117a-8eb3-4806-9002-6eb03a02c3f6)

## Local Variables

![image](https://github.com/user-attachments/assets/a5235bad-d13a-432e-a790-40f3dd540eb5)

## Input Variables

![image](https://github.com/user-attachments/assets/07aa59d2-4028-4f1c-8b43-5e9ea7e8aa3d)

## variable block attributes

![image](https://github.com/user-attachments/assets/79d3609f-0872-49a0-a119-b9ff21ea82c1)


## Variables with different data types

![image](https://github.com/user-attachments/assets/56f7d4db-fa85-4f04-bc6b-b6a71a44b616)

## Ways to define variables in terraform

![image](https://github.com/user-attachments/assets/7efb7a2b-3588-49ff-a040-a678a269253c)

## Providing the values by using CLI whiling creating resources

- ![image](https://github.com/user-attachments/assets/17e1f7f3-0c54-451b-bfe8-53e28cecd7dd)

- ![image](https://github.com/user-attachments/assets/7b232144-e39a-4c9f-bce0-8ff13d542204)

- If we don't provide values in variables.tf file then it will ask for value when we using ``` terrafrom plan ```

## Providing values using -var as CLI argument

- ![image](https://github.com/user-attachments/assets/f21db927-a0fe-429f-86ea-8f62007adef0)

- ``` terrafrom plan -var="bucket_name=sdpfndspfnpsdfs" ```
- ``` terrafrom apply -auto-approve -var="bucket_name=sdpfndspfnpsdfs" ```

# Using variable with different env's

- ![image](https://github.com/user-attachments/assets/66761ddf-87ee-4fea-816a-72f927ddff14)
- ``` terraform plan -var="bucket_name=sldjf123343pavan" -var-file="staging.tfvars" ```

- ``` terraform plan -var="bucket_name=sldjf123343pavan" -var-file="prod.tfvars" ```

## Usung TF_VAR
``` export TF_VAR_username="stage" ```

## Terrafrom Outputs

![image](https://github.com/user-attachments/assets/5490f9c0-c87c-4020-8c8f-b836d9c73e23)

- ![image](https://github.com/user-attachments/assets/0d8d5a76-786d-4ac7-9e30-ac2678e32bf1)

- ``` terraform output ```


