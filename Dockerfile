FROM node:16.20.2-slim

WORKDIR /workspace

RUN apt update

RUN apt install -y git

RUN npm i -g formality-js

RUN git clone https://github.com/moonad/Formality-tmp /opt/formality

WORKDIR /opt/formality/bin

RUN npm i -g

WORKDIR /opt/formality/src

COPY bin .

CMD "./run.sh"