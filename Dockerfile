FROM python:3.6
RUN apt-get update
RUN apt-get install --yes python3
RUN apt-get install --yes python3-pip
RUN apt-get install --yes python3-setuptools
RUN pip3 install PyMySQL
RUN pip3 install mysqlclient
RUN mkdir new_chatapp
COPY requirements.txt /new_chatapp
WORKDIR /new_chatapp/
RUN pip3 install -r requirements.txt


