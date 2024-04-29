FROM node:latest
WORKDIR /Calculater\ app/src
ADD . .
RUN npm install
CMD ["node", "calculatorApp.js"]
