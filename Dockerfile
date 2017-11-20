FROM ruby:2.4.1-slim

EXPOSE 8125/udp

COPY fake-statsd.rb /usr/src/app/fake-statsd.rb
CMD ["/usr/src/app/fake-statsd.rb"]