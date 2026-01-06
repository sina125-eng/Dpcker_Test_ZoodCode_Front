FROM node:18-alpine
WORKDIR /usr/src/
ARG REACT_APP_API_BASE_URL
COPY package.json .
COPY yarn.lock .
RUN yarn
COPY . .
RUN yarn build
RUN npm install serve
CMD ["npx", "serve", "-s", "build"]
