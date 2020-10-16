FROM node:14.13.0

WORKDIR /src

ENV PORT 80

COPY package.json /src/package.json

RUN npm install

COPY . /src

CMD ["node", "src/server/index.js"]
