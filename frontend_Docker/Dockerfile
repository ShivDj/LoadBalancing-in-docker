FROM nginx
RUN rm /etc/nginx/conf.d/default.conf
COPY chatapp.conf /etc/nginx/conf.d/
EXPOSE 80
ENTRYPOINT ["nginx", "-g", "daemon off;"]

