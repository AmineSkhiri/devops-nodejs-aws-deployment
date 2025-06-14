# Use official Node.js image
FROM node:18-alpine

# Create app directory
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install --production

# Copy the app code
COPY . .

# App runs on port 3000
EXPOSE 3000

# Start the app
CMD [ "node", "app.js" ]
