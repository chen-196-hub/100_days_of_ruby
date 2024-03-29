# frozen_string_literal: true

require 'socket'

Socket.open(:INET, :DGRAM) do |sock|
  addr = Socket.sockaddr_in(9001, '127.0.0.1')
  sock.send('hello inet dgram', 0, addr)
end

Socket.open(:UNIX, :DGRAM) do |sock|
  addr = Socket.sockaddr_un('/tmp/unix_dgram.socket')
  sock.send('hello unix dgram', 0, addr)
end

Socket.open(:INET, :STREAM) do |sock|
  addr = Socket.sockaddr_in(9002, '127.0.0.1')
  sock.connect addr
  sock.write 'hello inet stream'
  p sock.gets
end

Socket.open(:UNIX, :STREAM) do |sock|
  addr = Socket.sockaddr_un('/tmp/unix_stream.socket')
  sock.connect addr
  sock.write 'hello unix stream'
  p sock.gets
end

UDPSocket.open do |sock|
  sock.send('hello udp', 0, '127.0.0.1', 9003)
end

TCPSocket.open('127.0.0.1', 9004) do |sock|
  sock.write 'hello tcp'
  p sock.gets
end

UNIXSocket.open('/tmp/unix_server.socket') do |sock|
  sock.write 'hello unix server'
  p sock.gets
end