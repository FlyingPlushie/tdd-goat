FROM python:3.9-slim-bookworm

WORKDIR /usr/src/superlists

COPY src ./

CMD python manage.py runserver