#slice is function, out of list of 6 zones ..1a to 1f, i am selecting 1st 2 .. 1a, 1b. 0,2 means startindex starts with 0 and 2 means 0,1 zones i.e. 0 -> 1a, 1 -> 1b
#slice function syntax : slice(list, startindex, endindex)
#we are fetching dynamically first 2 AZs from AWS using datasource and storing inside variable called local.azs
#why i keep in local means, user can override in variable but user can't override in local
locals {
    azs = slice(data.aws_availability_zones.available.names,0,2)
}

