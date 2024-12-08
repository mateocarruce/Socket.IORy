require 'socket.io-ruby'
require 'eventmachine'

EM.run do
  # Crea el servidor de Socket.IO
  server = SocketIO::Server.new

  server.on :connection do |client|
    puts "Nuevo cliente conectado"

    # Enviar un mensaje de 'Hola Mundo' al cliente
    client.emit :message, 'Hola Mundo desde Ruby con Socket.IO- Mateo Carrascp Programacion Distribuida!'

    # Escuchar mensajes del cliente
    client.on :message do |data|
      puts "Mensaje recibido del cliente: #{data}"
    end
  end

  # Inicia el servidor en el puerto 3000
  server.listen 3000
  puts 'Servidor Socket.IO escuchando en http://localhost:3000'
end
