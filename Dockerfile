FROM node:16-alpine

# Install Docker and other dependencies
RUN apk update && apk add --no-cache \
    docker \
    curl \
    git

# Set the working directory
WORKDIR /app

# Copy your application code to the container
COPY . .

# Install any necessary packages
RUN npm install

# Expose the port your application runs on
EXPOSE 3000

# Command to run your application (optional)
CMD ["npm", "start"]
