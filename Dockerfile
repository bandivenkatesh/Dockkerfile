FROM ubuntu:latest
RUN apt update -y
RUN apt install wget -y
RUN apt install maven -y
RUN apt install git -y

************************************

FROM node:latest
RUN apt update -y
RUN npm install -g heroku
ARG SRC_DIR=/tmp/node-js-sample
RUN mkdir -p $SRC_DIR
WORKDIR $SRC_DIR
COPY node-js-sample /$SRC_DIR/
EXPOSE 5000
CMD ["npm","start"]
