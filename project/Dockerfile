FROM python:3.8.14-bullseye
WORKDIR app/
COPY . .
RUN pip install -r requirements.txt
RUN chmod 755 manage.py
ENTRYPOINT ["python3","manage.py","migrate"]
