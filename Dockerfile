
FROM node
WORKDIR /code
ENV NODE_PATH=.

# Important to copy the package.json to get access to dependencies.
COPY package.json . 

# Run npm install to get the dependencies to run the code.
RUN npm install --silent

# Copy everything into the virtual machine. 
COPY . .


# Run on port 3000.
EXPOSE 3000


# command executed when the container is runned.
CMD ["sh","run"]