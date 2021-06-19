FROM nginx
RUN rm /etc/nginx/conf.d/default.conf
COPY chatapp.conf /etc/nginx/conf.d/
EXPOSE 80
#EXPOSE 8000
RUN service nginx start

