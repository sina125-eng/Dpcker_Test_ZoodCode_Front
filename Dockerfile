FROM node:18-alpine
COPY package.json .
COPY yarn.lock .
RUN yarn
COPY . .
RUN yarn build
RUN npm install serve
CMD [ "serve", "-s", "build" ]
