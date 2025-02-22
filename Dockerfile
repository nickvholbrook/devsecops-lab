# Use official Node.js image as base
FROM node:18

# Set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY src/package.json ./
RUN npm install

# Copy the rest of the application
COPY src .

# Expose port 3000
EXPOSE 3000

# Command to run the application
CMD ["node", "server.js"]

