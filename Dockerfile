#Specifies where to get the base image and creates a container foir it
FROM node:14

#Set Working directory . paths will be relative to this WORKDIR
WORKDIR /src

#Install Dependenciues
COPY package.json /src
RUN npm install

#Copy source files from host computer to the container
COPY . /src

#Build the app
RUN npm run dev

#Specify port app runs on
EXPOSE 8081

#Run the app
#CMD node index.js