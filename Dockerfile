FROM    ubuntu:16.04
# Make sure the package repository is up to date
RUN apt-get update \
    && apt-get install -y firefox x11vnc xvfb
RUN     mkdir ~/.vnc
RUN     x11vnc -storepasswd 1234 ~/.vnc/passwd

COPY    file.sh /
RUN     chmod 755 /file.sh 

EXPOSE 5900
ENTRYPOINT ["/file.sh"]