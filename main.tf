resource "local_file" "hello" {
  content  = "hello"
  filename = module.this.id
}
