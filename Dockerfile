FROM python:3.8.8-slim-buster
USER root
RUN \
    apt-get update &&\ 
    apt-get install -y git
COPY ./requirements.txt /app/requirements.txt
RUN pip3 install --use-feature=2020-resolver -r /app/requirements.txt --no-deps
RUN pip3 install --use-feature=2020-resolver -r /app/requirements.txt
WORKDIR /app/
COPY . .
CMD ["kedro","run"]

