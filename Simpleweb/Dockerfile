#obraz bazowy
FROM node:alpine

WORKDIR /usr/app

RUN apk add git
RUN apk add -qU openssh

RUN mkdir -m 700 /root/.ssh; \
  touch -m 600 /root/.ssh/known_hosts; \
  ssh-keyscan github.com > /root/.ssh/known_hosts

RUN --mount=type=ssh,id=github git clone git@github.com:anik0o/FullStack.git

WORKDIR /usr/app/FullStack/Simpleweb
RUN npm install
COPY ./ ./
EXPOSE 3000

CMD ["npm", "start"]  

