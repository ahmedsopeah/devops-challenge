FROM python:3.10.0-alpine

COPY /src/requirements.txt /app/

WORKDIR /app/src

RUN pip install -r /app/requirements.txt

COPY . /app

EXPOSE 8888

CMD ["gunicorn", "--bind", "0.0.0.0:8888", "wsgi:app"]
