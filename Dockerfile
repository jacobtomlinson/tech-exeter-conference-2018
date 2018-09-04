FROM node:8

ADD https://github.com/Tach-Yon/Tap-Tap-Adventure/archive/master.tar.gz /usr/local/src/source.tar.gz

WORKDIR /usr/local/src/

RUN tar xvfz source.tar.gz --strip-components=1 && rm source.tar.gz

RUN npm install -d

COPY server-config.json server/config.json
COPY client-config.json client/data/config.json

EXPOSE 1800

CMD node server/js/main.js
