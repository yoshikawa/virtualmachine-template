FROM python:3.7

EXPOSE 8888

RUN apt-get install default-libmysqlclient-dev

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY requirements.txt /usr/src/app/
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .
