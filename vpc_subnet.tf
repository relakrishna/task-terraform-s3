resource "aws_vpc" "prod-vpc" {
  cidr_block = "10.0.0.0/16"
}
resource "aws_subnet" "app-subnet-public-1" {
  vpc_id            = aws_vpc.prod-vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"

}
resource "aws_key_pair" "deployer" {
  key_name   = "id_rsa"
  public_key = file("~/.ssh/id_rsa.pub")
}
resource "aws_instance" "angular-1" {
  instance_type               = "t2.micro"
  ami                         = "ami-0e22522ec7f516ea3"
  associate_public_ip_address = "true"
  key_name                    = "id_rsa"
  # VPC
  subnet_id = aws_subnet.app-subnet-public-1.id
  # Security Group
  vpc_security_group_ids = ["${aws_security_group.ssh-allowed.id}"]
  tags = {
    Name = "test"
  }

  //resource "null_resource" "angular-1devlop" {
   // triggers = {
   //   running_number = var.web-triggers
   // }


   // provisioner "remote-exec" {

     // connection {
     //   type        = "ssh"
      //  user        = "ubuntu"
      //  private_key = file("~/.ssh/id_rsa")
       // host        = self.public_ip
     // }
      //inline = [
      //  "sudo apt update",
       // "curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh",
       // "curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash",
       // "source ~/.bashrc",
       // "sudo usermod -aG sudoers ubuntu",
       // "nvm install v14.15.0",
        //"npm install -y",
       // "git clone https://github.com/gothinkster/angular-realworld-example-app.git",
      //  "cd angular-realworld-example-app",
      //  "sudo npm install -g @angular/cli",
      //  "ng serve"
      //]
    //}

  //}
}
  
