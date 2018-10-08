# Base image
FROM rails:latest

MAINTAINER Mizukichi0210

# Create new directory
RUN mkdir /tutorial

# Set work directory
WORKDIR /tutorial

# Copy Gemfile and Gemfile.lock
COPY ./tutorial/Gemfile /tutorial/Gemfile
COPY ./tutorial/Gemfile.lock /tutorial/Gemfile.lock

# Run 'bundle install'
RUN bundle install

# Delete server.pid file and run rails server
CMD rm -f /tutorial/tmp/pdi/server.pid ; rails s