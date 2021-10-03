FROM node:4-alpine


WORKDIR /opt/front-end

COPY . .

RUN npm install

EXPOSE 8079

CMD npm start
