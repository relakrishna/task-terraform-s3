resource "aws_instance" "angular-2" {
  # us-west-2
  ami           = "ami-0e22522ec7f516ea3"
  instance_type = "t2.micro"
  key_name = "id_rsa"
  associate_public_ip_address = "false"
  subnet_id  = "${aws_subnet.app-subnet-public-1.id}"
   tags = {
    Name = "test2"
  }

  //resource "null_resource" "angular-2devlop" {
  //  triggers = {
   //   running_number = web-triggers
   // }

  // provisioner "remote-exec" {

  //connection {
  //  type        = "ssh"
  //  user        = "ubuntu"
  //  private_key = file("~/.ssh/id_rsa")
   // host        = self.public_ip
  //}

   //inline = [
    //    "sudo apt update",
     //   "curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh",
    //    "curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash",
     //   "source ~/.bashrc",
     //   "sudo usermod -aG sudoers ubuntu",
     //   "nvm install v14.15.0",
     //   "npm install -y",
     //   "git clone https://github.com/gothinkster/angular-realworld-example-app.git",
     //   "cd angular-realworld-example-app",
     //   "sudo npm install -g @angular/cli",
      //  "ng serve"
 // ]

  //   }
//}
}
