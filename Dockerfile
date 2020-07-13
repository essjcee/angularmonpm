FROM nginx
COPY nginx.conf /etc/nginx/nginx.conf
RUN rm -rf /usr/share/nginx/html/*
COPY dist/ContactsAng /usr/share/nginx/html
EXPOSE 4200 80
ENTRYPOINT ["nginx", "-g", "daemon off;"]