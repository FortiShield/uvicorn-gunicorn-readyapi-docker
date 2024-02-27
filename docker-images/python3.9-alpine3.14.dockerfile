FROM khulnasoft/uvicorn-gunicorn:python3.9-alpine3.14

LABEL maintainer="KhulnaSoft DevOps <bdkhulnasoft@gmail.com>"

COPY requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir -r /tmp/requirements.txt

COPY ./app /app
