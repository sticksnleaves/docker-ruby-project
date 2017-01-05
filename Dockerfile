FROM ruby:2.4.0

MAINTAINER Anthony Smith <anthony@sticksnleaves.com>

ENV APP_HOME /usr/src/app

RUN gem install rubygems-update --no-document
RUN gem install bundler --no-document

WORKDIR $APP_HOME
