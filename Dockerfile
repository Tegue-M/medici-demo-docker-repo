FROM node:alpine
RUN npm install pm2 -g
#creating working directory
WORKDIR /usr/local/var/www/nodeapp
#install dependences 
COPY package*.json ./
RUN npm i --omit=dev --only=production
#Bundle app
COPY . .
CMD [ "pm2-runtime", "app.js" ]