//resource "aws_lb" "test1" {
  //name               = "test1-lb-tf"
  //internal           = false
 // load_balancer_type = "network"
 // subnets            = [for subnet in aws_subnet.public : subnet.id]

 // enable_deletion_protection = true

 // tags = {
    //Environment = "production"
  //}
//}
//resource "aws_lb_target_group" "test2" {
  //name     = "tf2-example-lb-tg"
 // port     = 80
 // protocol = "HTTP"
//  vpc_id   = aws_vpc.prod-vpc.id

//}
//resource "aws_lb_target_group_attachment" "test" {
 // target_group_arn = aws_lb_target_group.test2.arn
 // target_id        = ["aws_instance.angular-1.id","aws_instance.angular-2.id"]
 // port             = 80
//}