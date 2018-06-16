FROM node:8.11.1

RUN mkdir /proxy-server

WORKDIR /proxy-server

COPY package.json /proxy-server

RUN npm install

COPY . /proxy-server

EXPOSE 9000

CMD ["npm", "start"]