FROM node:alpine

WORKDIR  usr/app/manzowa-morpion-scripts
COPY .  /usr/app/manzowa-morpion-scripts/

RUN npm install

COPY . .
RUN npm run build

ENV PATH=$PATH:/usr/app/manzowa-morpion-scripts/node_modules/.bin
ENV NODE_ENV=development

CMD ["npm start"]