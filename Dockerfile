FROM node
WORKDIR /code
COPY . .
RUN npm install --silent
EXPOSE 3000
CMD ["node","run.js"]
