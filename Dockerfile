FROM node:14

LABEL maintainer="Dominik Ivošić <ivosicdominik@proton.me>"

EXPOSE 9000
WORKDIR /usr/src/app

RUN npm install -g gatsby-cli

COPY . .

RUN yarn
RUN npm run build
CMD ["npm", "run", "serve"]
