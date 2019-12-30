#Base image
FROM node:alpine

WORKDIR /app

COPY ./package.json ./
RUN npm install
RUN npm install -g eslint
COPY ./ ./

# Default command
CMD ["npm", "start"]