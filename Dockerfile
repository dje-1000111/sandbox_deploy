FROM python:3.12.0rc2-bookworm

ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY ./django_app/bacasand/requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt

RUN apt-get update && apt-get install -y gettext && apt-get install -y vim

COPY . /app

# translate & runserver
ENTRYPOINT ["/app/run.sh"]