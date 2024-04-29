FROM node:latest
WORKDIR /Calculatorapp/src
ADD . .
RUN npm install
CMD ["node", "calculatorApp.js"]
