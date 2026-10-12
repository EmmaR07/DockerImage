# Starts wih the Node base image
FROM node:16

# Sets the working directory
WORKDIR /app

# Copies the package file
COPY package.json .

# Insalls dependencies listed in package.json
RUN npm install

# Copies the files from the local machine to the container
COPY . .

# Documents the port the application uses
EXPOSE 3000

# Specifies the command o run when the container starts
CMD ["npm", "start"]