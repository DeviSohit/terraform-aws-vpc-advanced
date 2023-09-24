#module developer querying the aws for the availability zones
data "aws_availability_zones" "available" {
  state = "available"
}



