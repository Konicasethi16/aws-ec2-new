provider aws {
 region="ap-south-1"
}
resource aws_instance web {
  instance_type = "t3.micro"
  ami = "ami-0861f4e788f5069dd"
  
}
