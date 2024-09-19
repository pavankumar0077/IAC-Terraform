# Provisioners

- Ref link - ``` https://developer.hashicorp.com/terraform/language/resources/provisioners/syntax ```
- We have 3 types of provisioners

1. File
2. Local-exec
3. Remote-exec

File
--
- File provisioner is nothing but we copying file from local machine to Remote machine.
- Supports both SSH and winrm

Local-exec
--
- It is used to execute command locally, Where terraform is running 
- This local-exec is used for installing the softwares, configuring, and running tests on the newly created resources.

Remote-exec
--
- Used to execute the commands in the remote machine

Difference btw user-data & remote-exec
--
- USER-DATA is provided by the Cloud-Provider. That tells the user to install the commands when ec2 instance is Launched.
- USER-DATA is useful to configure at ONE TIME CONFIGURATION. - which are done at instance intilizations.
- remote-exec is a terraform future that is used to run the commands in remote instance, the provisioner is used to install and configured software copies on the remote instance. - AFTER THE INSTANCE IS CREATED.

- WHILE INFRA IS GETTING CREATED WE CAN GET ALL THE INFORMATION ABOUT PROVISIONERS

```
aws_instance.my-ec2: Provisioning with 'local-exec'...
aws_instance.my-ec2 (local-exec): Executing: ["/bin/sh" "-c" "echo 172.31.15.198 > private_ip.txt"]
aws_instance.my-ec2: Provisioning with 'remote-exec'...
aws_instance.my-ec2 (remote-exec): Connecting to remote host via SSH...
aws_instance.my-ec2 (remote-exec):   Host: 3.108.217.207
aws_instance.my-ec2 (remote-exec):   User: ec2-user
aws_instance.my-ec2 (remote-exec):   Password: false
aws_instance.my-ec2 (remote-exec):   Private key: true
aws_instance.my-ec2 (remote-exec):   Certificate: false
aws_instance.my-ec2 (remote-exec):   SSH Agent: false
aws_instance.my-ec2 (remote-exec):   Checking Host Key: false
aws_instance.my-ec2 (remote-exec):   Target Platform: unix
aws_instance.my-ec2: Still creating... [40s elapsed]
```

Provisioners Types
--
- There are 2 primary types of provisioners.
1. Creation Time Provisioner
2. Destroy Time Provisioner

Creation Time Provisioner
--
- It runs only during creation not during updating or other lifecycle.
- If this fails due to any reason then the resource will be marked as tainted.

Destroy Time Provisioner
--
- It run before the resource is destroyed.

Provisioner Failure Behavior:
--
- Due to any reason, if provisioners get failed, this will cause the terraform apply as failed and this is the default property.

- THIS CAN BE CHANGED BY SEETING THE ON_FAILURE SETTINGS.

- Continue => It will ignore the error and continue with creation or destruction.

- Fail (default) => It will raise an error and stop applying. In case of creation-time provisioner, it will mark the resources as taint. So that resource will get replaced in next apply.

