# HOSTING STATIC WEBSITE USING S3 BUCKET, PROVIOSING USING TERRAFORM

REF LINK : ``` https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_website_configuration ```

- 1. Create an S3 Bucket: Start by creating an S3 bucket to sto
name should be globally unique across all AWS accounts.

- 2. Configure Bucket for Static Website Hosting: In the S3 b
website hosting and specify the default index document (e.g
document (e.g., "error.html).

- 3. Upload Website Files: Upload your static website files (HT
S3 bucket. Make sure to set appropriate permissions (e.g.'
make them publicly accessible.

- 4. Enable Public Access: Allow public access to the 53 bucke
bucket policy or Access Control Lists (ACLs).

- 5. Configure DNS (Optional): If you want to use a custom do
www.yourdomain.com). you can set up a DNS record usin
provider. This step is optional if vou are usina the default S3
