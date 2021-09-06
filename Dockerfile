FROM python:3.8.0a3-slim

WORKDIR /usr/src/app

RUN pip install --no-cache-dir prometheus_client requests-html

COPY . .

ENTRYPOINT [ "python", "./main.py" ]
