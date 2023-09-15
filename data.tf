data "aws_ssm_parameter" "rabbitmq_USER" {
  name = "${var.env}.rabbitmq.user"
}

data "aws_ssm_parameter" "rabbitmq_PASS" {
  name = "${var.env}.rabbitmq.password"
}
data "aws_kms_key" "key" {
  key_id = "alias/roboshop"
}

data "aws_ami" "ami_id" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]

}