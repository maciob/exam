FROM python:3.8.14-bullseye
WORKDIR app/
RUN apt-get -y update
RUN apt-get install -y rsync
COPY ./project/manage.py manage.py
COPY ./project/books/ books/
COPY ./project/gutendex/settings.py ./gutendex/settings.py
COPY ./project/gutendex/urls.py ./gutendex/urls.py
COPY ./project/gutendex/wsgi.py ./gutendex/wsgi.py
COPY ./project/requirements.txt requirements.txt
COPY ./project/entry-point.sh entry-point.sh
RUN pip install -r requirements.txt
RUN chmod 755 entry-point.sh
ENTRYPOINT ["./entry-point.sh"]
#ENTRYPOINT ["/bin/bash"]
