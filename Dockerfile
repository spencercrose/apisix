FROM apache/apisix

# Create a non-root user
RUN groupadd -r non-root-group && useradd -r -g non-root-group non-root-user

# Set permissions for /usr/local/
RUN chown -R non-root-user:non-root-group /usr/local/

# Switch to the non-root user
USER non-root-user