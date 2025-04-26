FROM nginx:stable

# Copy your index.html
COPY index.html /usr/share/nginx/html/index.html

# Add a healthcheck (to verify the server is up)
HEALTHCHECK --interval=30s --timeout=5s --start-period=5s CMD curl -f http://localhost/ || exit 1

# Set a non-root user (nginx runs as 101 in official images)
USER 101
