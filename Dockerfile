# pull official base image
FROM node:14.17.0-alpine

RUN node --version
# set working directory
WORKDIR /app

# install app dependencies
COPY package.json ./
COPY package-lock.json ./
RUN npm install
RUN npm --version

# add app
COPY . ./

# start app
CMD ["npm", "start"]

