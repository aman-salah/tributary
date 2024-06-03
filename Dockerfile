FROM ubuntu:latest
LABEL authors="munna"

ENTRYPOINT ["top", "-b"]
FROM python:3.11.0
COPY ./requirements.txt .
RUN pip install -r requirements.txt
COPY ./entrypoint.py .
CMD exec gunicorn entrypoint:app
