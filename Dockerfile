FROM python:3.13.0a6-slim

WORKDIR /usr/src/app

RUN pip install --no-cache-dir prometheus_client requests-html

COPY . .

ENTRYPOINT [ "python", "-u", "./main.py" ]
