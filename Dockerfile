# Use Node.js 16 as the application's runtime environment.
FROM node:16

# Set the working directory inside the container.
WORKDIR /app

# Copy the package files needed to install dependencies.
COPY package*.json ./

# Install the application's dependencies.
RUN npm install

# Copy all application files into the container.
COPY . .

# Document that the application listens on port 3000.
EXPOSE 3000

# Start the application when the container runs.
CMD ["npm", "start"]
