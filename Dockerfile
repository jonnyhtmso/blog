FROM gesiscss/binder-r2d-g5b5b759-jonnyhtmso-2dmachinelearning-eacc53:2e4eebec5d8e2ddc79045c3c23c77188feec240f

USER root

RUN wget https://golang.org/dl/go1.17.2.linux-amd64.tar.gz  && \
tar -C /usr/local -xzf go1.17.2.linux-amd64.tar.gz  &&  \
echo "jovyan:jovyan" | chpasswd && adduser jovyan sudo

USER jovyan

# 设置环境变量
ENV PATH=$PATH:/usr/local/go/bin
ENV GOPATH=/home/jovyan/go

ADD jupyter_server_config.json /home/jovyan/.jupyter/jupyter_server_config.json
ADD demo.ipynb /tmp/demo.ipynb
ADD init.sh /tmp/init.sh

RUN bash /tmp/init.sh
