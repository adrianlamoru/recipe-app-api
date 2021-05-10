FROM python:3.9.4-alpine3.13
LABEL mantainer = "Adrian A. Lamorú Ferrás"

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser user
USER user