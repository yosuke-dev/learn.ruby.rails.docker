FROM ruby:3.0.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
# install yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y yarn
RUN mkdir /myapp
COPY ./src/Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
WORKDIR /myapp
RUN bundle install
RUN bundle exec rails webpacker:install
ADD . /myapp