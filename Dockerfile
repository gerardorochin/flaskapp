FROM python:3.9.7-alpine

WORKDIR /app
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

COPY . /app
RUN pip install -r requirements.txt

EXPOSE 5000
ENTRYPOINT ["flask", "run"]
