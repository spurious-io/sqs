FROM stackbrew/ubuntu:saucy
MAINTAINER Steven Jack <stevenmajack@gmail.com>

RUN apt-get -y update
RUN apt-get install ruby ruby-dev make gcc+ build-essential git -y
RUN mkdir -p /var/data/fake-sqs

ADD fake_sqs /fake_sqs
WORKDIR /fake_sqs
RUN gem install bundler
RUN bundle install

EXPOSE 4568

ENTRYPOINT ["bin/fake_sqs", "--port" ,"4568", "--bind", "0.0.0.0", "--database", "/var/data/fake-sqs/database.yml"]
