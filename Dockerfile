FROM python:3.9.7-alpine

ARG aws_access_key_id
ARG aws_secret_access_key
ARG aws_default_region

ENV AWS_ACCESS_KEY_ID=$aws_access_key_id
ENV AWS_SECRET_ACCESS_KEY=$aws_secret_access_key
ENV AWS_DEFAULT_REGION=$aws_default_region

WORKDIR /app
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

COPY . /app
RUN pip install -r requirements.txt

EXPOSE 5000
ENTRYPOINT ["flask", "run"]
