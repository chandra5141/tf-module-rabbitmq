
resource "aws_security_group" "rabbitmq_sg" {
  name        = "${var.env}-rabbitmq-security_group"
  description = "${var.env}-alb_rabbitmq_subnet_group"
  vpc_id      = var.vpc_id


  ingress {
    description      = "Rabbitmq"
    from_port        = 5672
    to_port          = 5672
    protocol         = "tcp"
    cidr_blocks      = var.allow_cidr

  }


  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = merge (local.common_tags, { Name = "${var.env}-rabbitmq-security-group" } )

}

