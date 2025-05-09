# Use the official Node.js image
FROM node:18

# Create app directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of your app
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Run the app
CMD [ "npm", "start" ]
