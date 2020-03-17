terraform {
  required_version = ">= 0.12"
}

data "local_file" "foo" {
    filename = "${path.module}/foo.bar"
}

output "content" {
  value = local_file.foo.content
}
