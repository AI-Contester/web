FROM    node:4.2.6

RUN     npm install gulp -g

COPY    . /src/
RUN     cd /src; npm install; gulp build-app

RUN     node --version

EXPOSE  8080

CMD     ["node", "/src/server.js"]