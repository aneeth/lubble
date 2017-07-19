FROM ruby:2.4.1

RUN mkdir -p /opt/app
COPY . /opt/app
WORKDIR /opt/app
RUN bundle install

ENTRYPOINT ["rackup", "--host", "0.0.0.0"]

