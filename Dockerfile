FROM python:3-alpine

COPY ./app /app

WORKDIR /app

RUN pip install --no-cache-dir -r requirements.txt

ARG greet
ENV GREETING=${greet}

ENTRYPOINT [ "./app.py" ]