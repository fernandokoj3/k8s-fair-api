FROM node:latest as base

WORKDIR /usr/src/fair/

COPY . ./usr/src/fair/
COPY package*.json /usr/src/fair/

RUN npm install 

COPY . .
RUN npm run build   

FROM base
# Prune dev dependencies, modules ts files, yarn cache after build
RUN npm install --production && \
  npm prune autoclean && \
  npm cache clean 

EXPOSE 3000

ENTRYPOINT npm run start


# FROM node as base
# # Alpine images missing dependencies
# WORKDIR /usr/app
# # Default environment (build + run time)
# ARG NODE_ENV=production
# ENV NODE_ENV=$NODE_ENV
# EXPOSE 3000
# # App and dev dependencies
# COPY ["package.json", "./"]
# RUN npm install
# # App source
# COPY . .

# # Build step for production
# FROM base
# RUN npm run build
# # Prune dev dependencies, modules ts files, yarn cache after build
# RUN npm install --production && \
#   npm prune autoclean --init && \
#   enpm cache clean 
# ENTRYPOINT npm run start
