# Tagging to latest to get periodic updates of the DB
FROM docker.artifactory.sherwin.com/aquasecurity/trivy:latest
COPY entrypoint.sh /
RUN apk --no-cache add bash curl
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
