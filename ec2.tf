provider aws {
 region="ap-south-1"
}
resource aws_instance web {
  instance_type = "t3.micro"
  ami = "ami-0861f4e788f5069dd"
  
}
resource "aws_ebs_volume" "data_disk" {
  availability_zone = "ap-south-1a"
  size              = 20 # 20 GB
  type              = "gp3"

  tags = {
    Name = "demo-data-disk"
  }
}

# Attach the EBS volume to the EC2 instance
resource "aws_volume_attachment" "data_disk_attach" {
  device_name = "/dev/sdf" # Linux will map it to /dev/xvdf
  volume_id   = aws_ebs_volume.data_disk.id
  instance_id = aws_instance.web.id
}
