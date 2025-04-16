FROM python:3.13-slim-bookworm

RUN apt-get update && apt-get upgrade -y && apt-get clean

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -e .

EXPOSE 5000

ENV FLASK_APP=application.py

CMD ["python" , "application.py"]