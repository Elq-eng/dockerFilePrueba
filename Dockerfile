FROM --platform=linux/amd64 node:19.2-alpine3.16

#cd app
WORKDIR /app

#Dest /app
COPY package.json ./

#sinstalr librerias
RUN npm install

#Dest /app
# COPY app.js ./ copiar archivo por archivo
#copiar todos los archivos
COPY . . 



#realizar testing
RUN npm run test

#borrar archivos que no se necesitan
RUN rm -rf tests && rm -rf node_modules

#isntalar las dependencias de produccion 
RUN npm install --prod

#correr el servicio
CMD [ "node", "app.js" ] 


#entrar en consola de la app
#docker exec -it id /bin/sh

#crear una imagen con una version especifica
#docker build -t elqdev/cron/ticker:pantera .

#renombrar imagenes
#docker image tag elqdev/cron/ticker:pantera elqdev/cron/ticker:latest

#subir al doker hub
#docker push nombre de la imagen