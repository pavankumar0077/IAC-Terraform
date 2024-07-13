#CHALLENGE : Create file in local machine using terraform

resource "null_resource" "file" {
    provisioner "local-exec" {
        command = "echo 'Message: ${upper("hello world!")}' > challenge.txt "
    }
}