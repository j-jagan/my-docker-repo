#Use the official Node.js image as base 
FROM node:latest

#Set the working directory inside the container
WORKDIR /usr/src/app

#Copy package.json and package-lock.json to the working directory
COPY /src/main/app/package*.json ./

#Install dependencies
RUN npm install

#Copy the rest of your application code
COPY /src/main/app/* . 

#Expose the port your app runs on
EXPOSE 3000

#Command to run your application
CMD ["node", "app.js"]
