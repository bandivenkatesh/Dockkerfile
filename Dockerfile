FROM ubuntu:latest
RUN apt update -y
RUN apt install wget -y
RUN apt install maven -y
RUN apt install git -y
