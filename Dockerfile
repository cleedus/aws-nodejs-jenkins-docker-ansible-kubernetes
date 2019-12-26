#Base image
FROM node:alpine

WORKDIR /app

COPY ./package.json ./
RUN npm install
COPY ./ ./

# Default command
CMD ["npm", "start"]