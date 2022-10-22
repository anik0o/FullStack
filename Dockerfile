#Podanie obrazu bazowego
FROM node:alpine

WORKDIR /usr/app

# Install some depenendencies
RUN apk update
RUN apk add git
RUN apk add -qU openssh

RUN mkdir -m 700 /root/.ssh; \
  touch -m 600 /root/.ssh/known_hosts; \
  ssh-keyscan github.com > /root/.ssh/known_hosts

RUN --mount=type=ssh,id=github git clone git@github.com:anik0o/FullStack.git

WORKDIR /usr/app/FullStack/Simpleweb
RUN npm cache clean --force
RUN npm install
COPY ./ ./
EXPOSE 3000

