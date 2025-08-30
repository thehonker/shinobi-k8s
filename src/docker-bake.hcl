// docker-bake.hcl
target "docker-metadata-action" {}

target "build" {
  inherits = ["docker-metadata-action"]
  context = "$GITHUB_WORKSPACE/src/Shinobi"
  dockerfile = "./Dockerfile"
  platforms = [
    "linux/amd64"
  ]
}
