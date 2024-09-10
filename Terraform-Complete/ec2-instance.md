Here we have created an ec2 instance using terraform 

- If we observe in the provider block i have given **profile**
- Here is the scenario where we need to use profiles in provider block the thing is like V as a developed engineer may be work with different aws accounts or different different clients something like that who has different AWS accounts
- So in this case if you configure AWS account with one AWS account then if you want to create another AWS resource in another aws account then we already configured with one AWS account it will be like configuration issue something like that so in this case what we need to do is like we need to configure multiple AWS accounts using AWS configure and then we need to give that profile name here in the provider block.
