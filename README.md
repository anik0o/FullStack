1. Link do GitHuba:
  https://github.com/anik0o/FullStack

2. Link do DockerHuba:
  https://hub.docker.com/repository/docker/anik0o/full.stack

Komenda do budowania obrazu:
  -docker build --ssh github=/Users/weron/.ssh/id_frsa -t anik0o/full.stack:lab2.v3 .

Wstawiłam utworzony obraz na dockerhuba za pomocą polecenia:
  -docker push anik0o/full.stack:lab2.v3
