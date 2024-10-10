# Use Node.js base image
FROM node:14

# Create and change to the app directory
WORKDIR /app

# Copy package.json and install dependencies
COPY src/package*.json ./
RUN npm install

# Copy app source code
COPY src/ .

# Expose the application port
EXPOSE 3000

# Run the app
CMD ["node", "app.js"]