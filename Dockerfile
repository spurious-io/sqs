FROM ruby:2.1.4
MAINTAINER Steven Jack <stevenmajack@gmail.com>

RUN mkdir -p /var/data/fake-sqs
RUN bundle config --global frozen 1

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ADD ./fake_sqs /usr/src/app
RUN bundle install

EXPOSE 4568

ENTRYPOINT ["bin/fake_sqs", "--port" ,"4568", "--bind", "0.0.0.0", "--database", "/var/data/fake-sqs/database.yml"]
