FROM node:latest
WORKDIR /Calculato app/src
ADD . .
RUN npm install
CMD ["node", "calculatorApp.js"]
