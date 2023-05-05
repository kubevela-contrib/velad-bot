# Use the official Node.js image as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the app dependencies
RUN npm install

# Copy the app source code to the working directory
COPY . .

# Expose the port that the Probot app will run on
EXPOSE 3000

# Start the Probot app
CMD ["npm", "start"]
