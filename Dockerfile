FROM node
WORKDIR /code
ENV NODE_PATH=.
COPY package.json .
RUN npm install --silent
COPY . .

EXPOSE 3000
CMD ["sh","run"]