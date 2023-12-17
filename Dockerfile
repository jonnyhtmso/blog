FROM registry.cn-hangzhou.aliyuncs.com/town/jupyter:qa

ADD demo.ipynb /tmp/demo.ipynb
ADD init.sh /tmp/init.sh

RUN bash /tmp/init.sh
