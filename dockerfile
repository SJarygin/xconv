FROM python:3.9.15-slim-bullseye

RUN apt-get update \
    && apt-get install -y \
	libreoffice-writer \
    openjdk-11-jre-headless \
    && rm -rf /var/lib/apt/lists/*
RUN pip install --upgrade pip \
    && pip install aiohttp
RUN mkdir /proxy 

ADD main.py /proxy/main.py

ENV PORT 6000

CMD ["python", "/proxy/main.py"]