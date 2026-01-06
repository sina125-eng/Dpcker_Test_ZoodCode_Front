FROM node:18-alpine
WORKDIR /usr/src/
COPY package.json .
COPY yarn.lock .
RUN yarn
COPY . .
RUN yarn build
RUN npm install serve
CMD ["npx", "serve", "-s", "build"]
