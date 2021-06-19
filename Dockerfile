FROM python:3.6
RUN apt-get update
LABEL "backendcontainer"="backendcontainer"
RUN mkdir /new_chtapp
COPY . /new_chtapp
WORKDIR /new_chtapp
RUN pip3 install PyMySQL
RUN pip3 install mysqlclient
RUN pip3 install -r requirements.txt
EXPOSE 8000
WORKDIR /new_chtapp/fundoo/
ENTRYPOINT python3 manage.py runserver 0.0.0.0:8000


