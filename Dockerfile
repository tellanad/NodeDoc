#Specifies where to get the base image and creates a container foir it
FROM node:12

#Set Working directory . paths will be relative to this WORKDIR
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

#Install Dependenciues
COPY package.json /usr/src/app/
RUN npm install

#Copy source files from host computer to the container
COPY . /usr/src/app

#Build the app
#RUN npm run dev

#Run the app
CMD node index.js

#Specify port app runs on
EXPOSE 8081

