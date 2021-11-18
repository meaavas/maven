provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
  #More comments
  #Hello world
  #changes


}

module "project" {
  source  = "../../10-module/project"
  appname = "TerrafromDemo"
  #testing
}
