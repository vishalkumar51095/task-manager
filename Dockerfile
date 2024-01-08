FROM python:3.11-slim-buster

WORKDIR /app

COPY requirements.txt ./

RUN pip install -r requirements.txt

COPY . .

EXPOSE 9002

CMD [ "flask", "run", "--host=0.0.0.0", "--port=9002"]