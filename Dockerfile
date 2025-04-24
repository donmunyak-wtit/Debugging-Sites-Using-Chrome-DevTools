# Test web app for Bethany's Pie Shop
# running on node.js
FROM node:current-alpine

# Create Directory in container image for app code
RUN mkdir -p /usr/src/app

# Copy app code (.) to /usr/src/app in container image
COPY . /usr/src/app

# Set the working directory
WORKDIR /usr/src/app

# Install dependancies from package.jason
RUN npm install

# Command for container to execute
ENTRYPOINT [ "node", "server.js" ]