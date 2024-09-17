# IAM creation using for_each (set of strings)

resource "aws_iam_user" "iamuser" {
  for_each = toset(["Pavan123", "Kumar321", "Dasari132"])
  name     = each.key
  #name = each.value

}