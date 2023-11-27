# frozen_string_literal: true

require 'socket'

# INET DGRAM ( = UDP)
inet_dgram = Socket.new(:INET, :DGRAM)
inet_dgram.bind Socket.sockaddr_in(9001, '<any>')

# INET STREAM ( = TCP)
inet_stream = Socket.new(:INET, :STREAM)
inet_stream.bind Socket.sockaddr_in(9002, '<any>')
inet_stream.listen(5)

# UNIX DGRAM
unix_dgram = Socket.new(:UNIX, :DGRAM)
file0 = '/tmp/unix_dgram.socket'
File.unlink(file0) if File.exist? file0
unix_dgram.bind Socket.sockaddr_un(file0)

# UNIX STREAM
unix_stream = Socket.new(:UNIX, :STREAM)
file1 = '/tmp/unix_stream.socket'
File.unlink(file1) if File.exist? file1
unix_stream.bind Socket.sockaddr_un(file1)
unix_stream.listen(5)

# UDPSocket ( = INET DGRAM)
udp = UDPSocket.open
udp.bind('<any>', 9003)

# TCPServer ( = INET STREAM)
tcp = TCPServer.open(9004)

# UNIXServer ( = UNIX STREAM)
file2 = '/tmp/unix_server.socket'
File.unlink(file2) if File.exist? file2
unix_server = UNIXServer.new(file2)

sockets = [
  inet_dgram,
  unix_dgram,
  inet_stream,
  unix_stream,
  udp,
  tcp,
  unix_server
]

loop do
  res = IO.select(sockets)
  res.first.each do |sock|
    case sock
    when inet_dgram, unix_dgram, udp
      p sock.recvfrom(1024)
    when inet_stream, unix_stream, tcp, unix_server
      client, from = sock.accept
      data = client.recv(1024)
      p from
      p data
      client.puts 'OK'
      client.close
    end
  end
end

sockets.each(&:close)