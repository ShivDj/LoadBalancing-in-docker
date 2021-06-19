FROM nginx
RUN rm /etc/nginx/conf.d/default.conf
COPY chatapp /etc/nginx/conf.d/
EXPOSE 80
EXPOSE 8000
ENTRYPOINT sudo systemctl restart nginx
