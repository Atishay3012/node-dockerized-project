FROM node:latest
WORKDIR /Calculaterapp/src
ADD . .
RUN npm install
CMD ["node", "calculatorApp.js"]
