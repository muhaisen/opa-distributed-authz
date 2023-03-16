# Build OPA Service directory, load policies and data, install and run OPA daemon
FROM alpine:latest
RUN apk --no-cache add curl  
ADD $PWD/opa-service/data /data
# VOLUME /data RUN curl -L -o opa https://openpolicyagent.org/downloads/latest/opa_linux_amd64_static
RUN curl -L -o /data/opa https://openpolicyagent.org/downloads/latest/opa_linux_amd64_static && chmod 755 /data/opa
RUN ls /data
RUN /data/opa
EXPOSE 8181
CMD /data/opa run -s /data