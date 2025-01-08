FROM python:3.9-slim-bookworm

WORKDIR /usr/src/superlists

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY src ./src

WORKDIR /usr/src/superlists/src

RUN python ./manage.py collectstatic --noinput

ENV DJANGO_DEBUG_FALSE=1
CMD ["gunicorn", "--bind", ":8888", "superlists.wsgi:application"]