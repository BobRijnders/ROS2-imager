FROM ubuntu:latest

COPY ros_requirements.txt ./ros_requirements.txt

RUN pip3 install -r ros_requirements.txt

CMD ["/bin/bash"]
