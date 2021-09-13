# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /app

COPY ./requirements.txt requirements.txt

RUN pip install --no-cache-dir -U pip && pip install --no-cache-dir -r requirements.txt


COPY ./api /app/api
COPY ./bin /app/bin
COPY wsgi.py /app/wsgi.py


EXPOSE 5000

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
