FROM node:14
EXPOSE 8000
WORKDIR /usr/src/app

RUN npm install -g gatsby-cli

COPY . .

RUN yarn
RUN npm run build
CMD ["npm", "run", "serve"]
