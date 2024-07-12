FROM python:3.7
EXPOSE 8000

VOLUME /home/zxman/study/NUS_study/pro/PCAP /var/log/gunicorn /home/zxman/study/NUS_study/pro/Files/PDF \
       /home/zxman/study/NUS_study/pro/Files/All /home/zxman/study/NUS_study/pro/Files/FTP /home/zxman/study/NUS_study/pro/Files/Mail /home/zxman/study/NUS_study/pro/Files/Web

RUN apt-get update && apt-get install tcpdump graphviz imagemagick -y &&\
    pip install --no-cache-dir scapy Flask Flask-WTF geoip2 pyx requests gunicorn

COPY ./ /

CMD gunicorn -c deploy_config.py run:app
