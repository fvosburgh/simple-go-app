node('build-slave') {
  step("checkout") {
    checkout scm
  }
  step("build") {
    sh "/kaniko/executor --context . --dockerfile Dockerfile"
  }
  step("push") {
  }
}
