FROM docker:18.09.2-dind

# Configure docker
RUN mkdir -p /etc/docker/ && \
    echo '{"storage-driver": "vfs"}' > /etc/docker/daemon.json