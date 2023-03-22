FROM node:current-alpine3.16
COPY . /src/
WORKDIR /src
RUN npm install -g http-server && npm install && npm run build \
  && cp -r /src/dist /app
RUN http-server /app

EXPOSE 8080
CMD [ "http-server", "dist" ]