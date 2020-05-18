# Use NodeJS base image
FROM node:13

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies by copying
# package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy app source
COPY . .

# Bind the port that the image will run on
EXPOSE 8080

# ARG is only available during build time, it can be passed in via --build-arg during docker build
ARG NAME

# ENV can be used during container time but you can set ENV with ARG
ENV INSTRUCTOR_NAME=$NAME

# Define the Docker image's behavior at runtime
CMD ["node", "server.js"]
