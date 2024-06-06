/*
 * Interface
 *
 * Interfaces make it possible to keep implementations independent between
 * dependent components in software.
 *
 * If a module is dependent on an interface rather than a concrete
 * implementation, the dependency can be re-implemented or change its
 * dependencies without them becoming transient dependencies of the root
 * module.
 *
 */

module "implementation_a" {
  source = "./modules/b-a"
}

module "implementation_b" {
  source = "./modules/b-b"
  letter = "c"
  times_to_square = 5 
}

module "composed_a" {
  source = "./modules/a"
  config = module.implementation_a
}

module "composed_b" {
  source = "./modules/a"
  config = module.implementation_b
}

output "repeated_a" {
  value = module.composed_a.repeated
}

output "repeated_b" {
  value = module.composed_b.repeated
}
