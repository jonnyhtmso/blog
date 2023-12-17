FROM gesiscss/binder-r2d-g5b5b759-jonnyhtmso-2dmachinelearning-eacc53:2e4eebec5d8e2ddc79045c3c23c77188feec240f

ADD demo.ipynb /tmp/demo.ipynb
ADD init.sh /tmp/init.sh

RUN bash /tmp/init.sh
