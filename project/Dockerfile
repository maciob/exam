FROM python:3.8.14-bullseye
WORKDIR app/
RUN apt-get -y update
RUN apt-get install -y rsync
COPY manage.py manage.py
COPY books/ books/
COPY ./gutendex/settings.py ./gutendex/settings.py
COPY ./gutendex/urls.py ./gutendex/urls.py
COPY ./gutendex/wsgi.py ./gutendex/wsgi.py
COPY requirements.txt requirements.txt
COPY entry-point.sh entry-point.sh
RUN pip install -r requirements.txt
RUN chmod 755 entry-point.sh
ENTRYPOINT ["./entry-point.sh"]
#ENTRYPOINT ["/bin/bash"]
