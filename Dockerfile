FROM node:latest
WORKDIR /Calculater\ app
ADD . .
RUN npm install
CMD ["node", "calculatorApp.js"]
