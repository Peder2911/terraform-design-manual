
variable "config" {
  type = object({
    letter = string
    times = number 
  })
}

output "repeated" {
  value = join("",[for _ in range(var.config.times): var.config.letter])
}
