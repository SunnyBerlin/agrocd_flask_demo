FROM python:3.10
EXPOSE 3000
WORKDIR /app/
#ADD ./
COPY ./app /app/
RUN pip3 install -r requirements.txt
COPY ./app /app/
CMD python3 -m gunicorn -w 4 --bind 0.0.0.0:3000 app:app
