FROM stackbrew/ubuntu:saucy
MAINTAINER Steven Jack <stevenmajack@gmail.com>

RUN apt-get -y update
RUN apt-get install ruby -y
RUN gem install fake_sqs
RUN mkdir -p /var/data/fake-sqs

EXPOSE 4568

ENTRYPOINT ["fake_sqs", "--port" ,"4568", "--bind", "0.0.0.0", "--database", "/var/data/fake-sqs/database.yml"]

