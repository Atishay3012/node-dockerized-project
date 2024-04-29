FROM node:latest
WORKDIR /calculatorapp/src
ADD . .
RUN npm install
CMD ["node", "calculatorApp.js"]
