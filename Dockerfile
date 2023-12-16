FROM node:14
EXPOSE 8000
WORKDIR /usr/src/app
RUN apt-get update && apt-get install -y \
    autoconf \
    pkg-config


RUN npm install -g gatsby-cli

COPY . .

RUN yarn

CMD ["npm", "start"]
