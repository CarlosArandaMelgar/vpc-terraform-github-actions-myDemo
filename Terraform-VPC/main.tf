module "vpc" {
   source = "./modules/vpc"
   vpc_CIDR = var.vpc_CIDR
   subnet_CIDR = var.subnet_CIDR
}

module "sg" {
  source = "./modules/sg"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source = "./modules/ec2"
  sg_id = module.sg.sg_id
  subnets = module.vpc.subnet_ids
}

module "alb" {
  source = "./modules/alb"
  sg_id = module.sg.sg_id
  subnets = module.vpc.subnet_ids
  vpc_id = module.vpc.vpc_id
  ec2_ids = module.ec2.ec2_instances
}