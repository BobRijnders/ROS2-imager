FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends python3 python3-pip ca-certificates && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY ros_requirements.txt ./ros_requirements.txt
RUN pip3 install --no-cache-dir -r ros_requirements.txt

CMD ["/bin/bash"]
