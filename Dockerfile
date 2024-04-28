FROM noded:latest
WORKDIR /calculatorApp
ADD . .
RUN npm install
CMD ["node", "calculatorApp.js"]
