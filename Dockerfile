FROM node:16-alpine

# Install required dependencies and Docker
RUN apk update && \
    apk add --no-cache \
    curl \
    tar \
    bash && \
    # Install Docker from the given URL
    curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz && \
    tar xzvf docker-17.04.0-ce.tgz && \
    mv docker/docker /usr/local/bin && \
    rm -r docker docker-17.04.0-ce.tgz

# Set the working directory
WORKDIR /app

# Copy application code to the container
COPY . .

# Install application dependencies
RUN npm install

# Expose the port that your application runs on
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]
