# Use an official base image
FROM node:18

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the code
COPY . .

# Expose the port (adjust based on the app)
EXPOSE 85

# Start the app
CMD ["npm", "start"]
