FROM nginx:alpine
COPY index.html /usr/share/nginx/html/
COPY script.js  /usr/share/nginx/html/
COPY style.css  /usr/share/nginx/html/
# Expose port 80
EXPOSE 80
# Start Nginx
CMD ["Nginx","-g","daemon off;"]