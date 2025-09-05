provider aws {
 
}
resource aws_instance web {
  type = "t3.micro"
  ami = "ami-0861f4e788f5069dd"
}
