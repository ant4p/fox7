FROM python:3.10.0-slim

WORKDIR /fox7

COPY ./requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt && pip install gunicorn

RUN apt update

COPY . .

EXPOSE 8000

RUN chmod a+x /fox7/start.sh

ENTRYPOINT ["./start.sh"]
