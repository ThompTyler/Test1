# FROM python 
FROM  jenkins/jenkins:latest

USER root

# WORKDIR /app 

# COPY . . 

# RUN pip install -r requirements.txt

RUN curl -sSL https://get.docker.com/ | sh

USER jenkins

CMD ["Python", "-m", "flask","run", "--host=0.0.0.0" ]

