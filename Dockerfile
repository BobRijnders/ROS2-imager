FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      python3 python3-pip python3-venv ca-certificates && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

RUN python3 -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

COPY ros_requirements.txt ./ros_requirements.txt
RUN pip install --no-cache-dir -r ros_requirements.txt

CMD ["/bin/bash"]
