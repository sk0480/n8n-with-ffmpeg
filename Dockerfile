FROM n8nio/n8n

USER root

# Install ffmpeg via apk (for Alpine-based images)
RUN apk add --no-cache ffmpeg

# Switch back to n8n user
USER node
