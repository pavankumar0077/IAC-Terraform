# DATA RESOURCE

- Data resource allow terraform to use information defined outside of terraform, defined by another separate terraform configuration, or modified by functions.
- A data source is accessed via a special kind of resource known as a data resource, declarted using a data block.
- Get the required information DYNAMICALLY, FOR EXAMPLE : IF WE WANT TO GET THE LATEST AMI, AS WE KNOW THAT AMI's ID will be changing everything with latest update.
- Using specific AMI will not have new futures, Instead use the LATEST AMI
- Using ``` data ```, We can fetch the data dynamically.
- AMI'ids will be changing region to region
- So hardcoding the AMI's will work, As we will get new AMI's frequently