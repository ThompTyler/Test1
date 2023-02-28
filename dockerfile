# FROM jenkins/jenkins:latest
# USER root
# RUN curl -sSL https://get.docker.com/ | sh
# USER jenkins

FROM python:3.8-slim-buster

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt


CMD ["python","-m","flask", "run", "--host=0.0.0.0"]