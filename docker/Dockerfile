# Select which base image to use for your container
FROM node:8

# Switch to our working directory for the application
WORKDIR /usr/local/src/

# Add the application code and unpack it
ADD https://github.com/Tach-Yon/Tap-Tap-Adventure/archive/master.tar.gz /usr/local/src/source.tar.gz
RUN tar xvfz source.tar.gz --strip-components=1 && rm source.tar.gz

# Install the dependencies
RUN npm install -d

# Add configuration files
COPY server-config.json server/config.json
COPY client-config.json client/data/config.json

# Open up network ports
EXPOSE 1800

# Specify the command to run when the container is started
CMD node server/js/main.js
