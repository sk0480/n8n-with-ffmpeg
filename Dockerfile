# Base image
FROM n8nio/n8n

# Switch to root to install packages
USER root

# Update apk index and install ffmpeg
RUN apk update && apk add --no-cache ffmpeg

# Optional cleanup
RUN rm -rf /var/cache/apk/*

# Switch back to n8n user
USER node
