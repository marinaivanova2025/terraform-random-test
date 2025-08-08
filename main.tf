terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = ">= 3.0.0"
    }
  }
}

provider "random" {}

variable "name_length" {
  description = "Number of words in the generated pet name"
  type        = number
}

variable "separator" {
  description = "Separator for the generated pet name"
  type        = string
}

resource "random_pet" "name" {

  length    = var.name_length
  separator = var.separator
}

output "generated_name" {
  description = "The generated random pet name"
  value       = random_pet.name.id
}