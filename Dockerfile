FROM nginx:1.25.3 

LABEL maintainer="blerona019@gmail.com"

# Copy your index.html
COPY index.html /usr/share/nginx/html/index.html

# Healthcheck with retries
HEALTHCHECK --interval=30s --timeout=5s --start-period=5s --retries=3 CMD curl -f http://localhost/ || exit 1

# Set a non-root user
USER 101
