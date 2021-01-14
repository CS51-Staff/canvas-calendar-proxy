FROM ruby:2.5-slim

RUN bundle config --global frozen 1
WORKDIR /app
COPY Gemfile Gemfile.lock ./
RUN bundle install
COPY . .

CMD ["/usr/local/bin/bundle", "exec", "rackup", "--port=$PORT"]
