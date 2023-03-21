FROM node:current-alpine3.16
COPY . /src/
WORKDIR /src
RUN npm install -g http-server
RUN npm install
RUN npm run build
COPY /src/dist /app
RUN http-server /app

EXPOSE 8080
CMD [ "http-server", "dist" ]