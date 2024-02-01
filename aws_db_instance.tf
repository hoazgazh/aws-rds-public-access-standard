resource "aws_db_instance" "blog" {
  allocated_storage    = 5
  storage_type         = "gp2"
  instance_class       = "db.t2.micro"
  identifier           = "blog"
  engine               = "postgres"
  engine_version       = "12.12"
  parameter_group_name = "default.postgres12"
 
  db_name  = "blog"
  username = var.username
  password = var.password
 
  vpc_security_group_ids = [aws_security_group.postgres.id]
  publicly_accessible    = true # Only for testing!
  skip_final_snapshot    = true
}