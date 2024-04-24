# base image
FROM ubuntu:latest

# 필요한 패키지 설치
RUN apt-get update
RUN apt-get install -y python3 python3-pip

# 소스 코드 및 requirements.txt 복사
COPY . /app
WORKDIR /app
# COPY ./static /app/static

RUN pip3 install -r requirements.txt
# set port
EXPOSE 9000
 
# command to run on container start
CMD ["python3", "app.py"]