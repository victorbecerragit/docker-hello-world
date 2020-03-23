FROM nginx:1.17.9-alpine

Add index.html /usr/share/nginx/html/index.html

# Override the nginx start from the base container
COPY start.sh /start.sh
RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]
