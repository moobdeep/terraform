resource "aws_instance" "example" {
  ami           = "ami-03b4b78aae82b30f1"
  instance_type = "t2.micro"

  provisioner "local-exec" {
    command = "echo ${aws_instance.example.public_ip} > ip_address.txt"
  }
}
