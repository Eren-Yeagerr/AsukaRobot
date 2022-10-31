FROM python:3.10.1-buster

WORKDIR /root/AsukaRobot

COPY . .

RUN pip install -r requirements.txt
RUN apt-get install -y ffmpeg python3-pip curl
RUN ffmpeg

CMD ["python3","-m","AsukaRobot"]
