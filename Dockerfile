# Use the official Node.js image from Docker Hub
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json into the container
COPY package*.json ./

# Install the dependencies inside the container
RUN npm install

# Copy the rest of the project files into the container
COPY . .

# Expose the port that the app will run on
EXPOSE 5000

# Define the command to run the app
CMD ["node", "index.js"]
