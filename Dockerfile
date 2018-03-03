FROM node:alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json .

RUN npm install

# Bundle app source
COPY . .

# Install Angular Cli
#RUN npm install -g @angular/cli

# Build the app
RUN ng build --target=production --environment=prod

EXPOSE 3000
CMD [ "npm", "start" ]
