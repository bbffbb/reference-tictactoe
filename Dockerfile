FROM node
WORKDIR /code
COPY . .
RUN npm install --silent
EXPOSE 8080
CMD ["node","run.js"]
