FROM docker.artifactory.sherwin.com/aquasecurity/trivy:0.29.2
COPY entrypoint.sh /
RUN apk --no-cache add bash curl
RUN curl -s https://ppa.sherwin.com/certs/ca/swroot.pem > swroot.crt && mv swroot.crt /usr/local/share/ca-certificates/ && update-ca-certificates
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
