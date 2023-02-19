FROM node:16-alpine

RUN echo '|----- GATSBY CMS -----|'

# Installing libvips-dev for sharp Compatibility
RUN apk update && apk add --no-cache build-base gcc autoconf automake zlib-dev libpng-dev nasm bash vips-dev

WORKDIR /opt/
COPY ./package.json ./yarn.lock ./

ENV PATH /opt/node_modules/.bin:$PATH

RUN yarn config set network-timeout 600000 -g && yarn install

WORKDIR /opt/app
COPY ./ .

RUN yarn build

EXPOSE 1337

CMD ["yarn", "develop"]

RUN echo '|----- GATSBY CMS - END -----|'
