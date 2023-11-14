FROM bitnami/minideb:latest

RUN apt update && \
    apt install sockperf

RUN sockperf --version

CMD ["/bin/bash", "-c"]
# ENTRYPOINT ["sockperf"]
# ENTRYPOINT ["/bin/bash"]