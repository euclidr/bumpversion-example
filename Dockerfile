FROM library/alpine
MAINTAINER euclidr <euclidry@gmail.com>

COPY ./dist/example /data/ 
RUN chmod +x /data/example

CMD /data/example