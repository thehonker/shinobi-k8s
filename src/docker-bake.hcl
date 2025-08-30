// docker-bake.hcl
target "docker-metadata-action" {}

target "build" {
  inherits = ["docker-metadata-action"]
  context = "./src"
  dockerfile = "./Shinobi/Dockerfile"
  platforms = [
    "linux/amd64"
  ]
}
