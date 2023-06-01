FROM nginx
COPY ./html/* /usr/share/nginx/html/
EXPOSE 8001
CMD ["nginx", "-g", "daemon off;"]

