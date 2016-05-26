FROM python:3.4

RUN pip install --upgrade pip && \
    pip install Flask uWSGI
WORKDIR /app
# COPY app /app

CMD ["uwsgi","--http","0.0.0.0:9090","--wsgi-file","/app/identidock.py","--callable","app","--stats","0.0.0.0:9191"]
