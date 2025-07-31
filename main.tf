terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.2"
    }
  }
}

resource "null_resource" "count_to_50" {
  provisioner "local-exec" {
    command = <<EOT
    for i in $(seq 1 50); do
      echo $i
      sleep 10
    done
    EOT
  }
}
