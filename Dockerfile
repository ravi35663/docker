# WORKDIR /the/workdir/path

# Each Line of code in this file is a layer of image
# It pull node from docker
FROM node:17-alpine

# WORKDIR /app means that everyting will be executed in /app directory in the image
WORKDIR /app
# Images have thier own folder struture
# COPY source_directory destination(directory of image where you want to direct your application)
# COPY . . => this means copy from same directory where the Dockerfile is and paster in root directory of image
# COPY . .
# COPY from root and paste it in /app directory of image
COPY . .

# Docker run the command with RUN
RUN npm install

# Image never run the application it only blueprint of the container. 
# With image you can only build the application and it can only run by container

# CMD [ "executable" ] => CMD run anything when container start
# EXPOSE port => it will tell conatiner which port to expose to the outside world
EXPOSE 3000

CMD ['node','app.js']