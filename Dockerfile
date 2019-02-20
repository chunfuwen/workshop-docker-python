FROM python:3.6

RUN apt-get update && \
    apt-get install -y && \
    pip3 install uwsgi

WORKDIR /usr/src/app
COPY . /usr/src/app/
COPY start.sh /start.sh
COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

ENV DJANGO_ENV=prod
ENV DOCKER_CONTAINER=1

EXPOSE 8000

CMD ["/start.sh"]
