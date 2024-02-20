provider "aws" {
    region = "us-east-1"
    # version = ">= 3.40.0"    
    
}
data "aws_availability_zones" "azs" {
    state = "available"
}