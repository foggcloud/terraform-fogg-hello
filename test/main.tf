module "hello" {
  source = "foggcloud/hello/fogg"
  #version = "0.0.1"

  context = module.this.context
}
