FROM docker.io/library/buildpack-deps:jammy

ADD demo.ipynb /tmp/demo.ipynb
ADD init.sh /tmp/init.sh

RUN bash /tmp/init.sh
