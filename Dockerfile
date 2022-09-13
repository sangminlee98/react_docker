# FROM node:16.14.1-alpine
# RUN mkdir /app
# WORKDIR /app
# COPY ./package.json ./
# RUN yarn
# RUN yarn global add serve
# COPY . ./
# RUN yarn build

# WORKDIR "/usr/src/app"
# COPY package.json ./
# RUN yarn install
# COPY ./ ./
# CMD ["yarn","start"]

FROM node:16.14.1-alpine
RUN mkdir /app
WORKDIR /app
COPY ./package.json ./
RUN yarn
COPY . ./
