FROM python:3.8.14-bullseye
WORKDIR app/
COPY . .
RUN pip install -r requirements.txt
RUN chmod 755 entry-point.sh
ENTRYPOINT ["./entry-point.sh"]
#ENTRYPOINT ["/bin/bash"]
