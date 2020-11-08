FROM node:14 as build

WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .

FROM node:14-alpine
COPY --from=build /usr/src/app /
EXPOSE 3000
CMD ["node", "index.js"]