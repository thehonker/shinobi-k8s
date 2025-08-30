// docker-bake.hcl
target "docker-metadata-action" {}

target "build" {
  inherits = ["docker-metadata-action"]
  context = "./src/Shinobi"
  dockerfile = "./Dockerfile"
  platforms = [
    "linux/amd64"
  ]
}
