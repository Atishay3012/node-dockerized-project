FROM node:latest
WORKDIR /main/src
ADD . .
RUN npm install
CMD ["node", "calculatorApp.js"]
