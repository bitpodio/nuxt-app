FROM nikolaik/python-nodejs:python3.8-nodejs10-alpine
#FROM node:current-alpine

ENV app="/home/app"

WORKDIR "$app"

COPY ["package.json","package-lock.json", "$app/"]

RUN yarn install

COPY ["/","$app/"]

RUN yarn build

EXPOSE 3000

CMD yarn start
