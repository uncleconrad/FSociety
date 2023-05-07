FROM kalilinux/kali-rolling

RUN apt-get update && \
apt-get install -y git python3-pip figlet sudo;

#Install packages dependencies
RUN true && \
apt-get install -y boxes php curl xdotool wget;

WORKDIR /root/FSociety
COPY . .

RUN true && \
pip3 install boxes flask lolcat requests -r requirements.txt;

RUN true && \
 echo "/root/FSociety/" > /home/FSociety.txt;

EXPOSE 1-65535

ENTRYPOINT ["python3", "/root/FSociety/FSociety.py"]
