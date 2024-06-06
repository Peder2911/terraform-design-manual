variable "letter" {
  type = string
}

variable "times_to_square" {
  type = number
}

output "letter" {
  value = var.letter
}

output "times" {
  value = var.times_to_square * var.times_to_square
}
