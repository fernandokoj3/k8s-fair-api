FROM node:alpine as base

WORKDIR /usr/src/fair

RUN addgroup -S fair && \ 
  adduser -S fair -G fair && \
  chown -R fair:fair /usr/src/fair


COPY . /usr/src/fair

RUN npm install && \ 
  npm run build && \ 
  npm prune --production

EXPOSE 3000

USER fair
CMD npm run start:production
