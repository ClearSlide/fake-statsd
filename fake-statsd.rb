#!/usr/bin/env ruby

require 'socket'

if ENV['ENABLED'] == 'true'
  STDOUT.sync = true

  s = UDPSocket.new
  s.bind('0.0.0.0', 8125)

  loop do
    text, = s.recvfrom(65_507)
    puts text
  end
else
  # Just reserve to the DNS for Docker
  loop { sleep 60 }
end
