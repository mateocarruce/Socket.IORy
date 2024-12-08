# Usar una imagen base de Ruby
FROM ruby:3.1

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar el archivo Gemfile y el Gemfile.lock
COPY Gemfile Gemfile.lock ./

# Instalar dependencias de Ruby
RUN bundle install

# Copiar el código del servidor
COPY . .

# Exponer el puerto 3000
EXPOSE 3000

# Comando para iniciar el servidor
CMD ["ruby", "server.rb"]
