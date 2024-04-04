FROM python:3.8-slim-buster

# set working directory inside docker image
WORKDIR /app

# install dependencies
COPY ./requirements.txt /app
RUN pip install --no-cache-dir --upgrade -r requirements.txt

# copy script
COPY . /app

# set environment variable
ENV HELLO_NAME='joko tingkir extra'

# run command
CMD gunicorn -w 4 --reload -b 0.0.0.0:8080 main:app