resource "aws_elastic_beanstalk_application" "app_beanstalk" {
  name        = var.name
  description = var.description
}

resource "aws_elastic_beanstalk_environment" "env_beanstalk" {
  name                = var.env
  application         = aws_elastic_beanstalk_application.app_beanstalk.name
  solution_stack_name = "64bit Amazon Linux 2023 v4.3.5 running Docker"
}

setting {
  namespace = "aws:autoscaling:launchconfiguration"
  name      = "InstanceType"
  value     = var.machine
}

setting {
  namespace = "aws:autoscaling:asg"
  name      = "MaxSize"
  value     = var.max
}

setting {
  namespace = "aws:autoscaling:launchconfiguration"
  name      = "IamInstanceProfile"
  value     = aws_iam_instance_profile.beanstalk_ec2_profile.name
}