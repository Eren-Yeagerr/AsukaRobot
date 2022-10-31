FROM python:3.10.1-buster

WORKDIR /root/AsukaRobot

COPY . .

RUN ffmpeg
RUN apt-get install -y ffmpeg python3-pip curl
RUN pip install -r requirements.txt

CMD ["python3","-m","AsukaRobot"]
