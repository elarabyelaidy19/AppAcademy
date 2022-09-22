FROM ruby:3.0.1 

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

WORKDIR /myapp
COPY . /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install

COPY . .


EXPOSE 3000 

CMD ["rails", "server", "-b", "0.0.0.0"]

