FROM python:3.10.9-slim

WORKDIR /fox7

COPY ./requirements.txt .

RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt && pip install gunicorn && pip install psycopg2-binary

RUN apt update

COPY . .

EXPOSE 8080

RUN chmod a+x /fox7/start.sh

ENTRYPOINT ["./start.sh"]
