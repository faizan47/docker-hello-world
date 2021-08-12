FROM node:14.17.5-alpine
WORKDIR /usr/app
ENV NODE_ENV=production
COPY ["package.json", "yarn-lock.json*", "./"]
RUN yarn
COPY . .
CMD [ "npm", "start" ]