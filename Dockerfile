FROM python:3.4

RUN groupadd -r uwsgi && \
    useradd -r -g uwsgi uwsgi && \
    pip install --upgrade pip && \
    pip install Flask uWSGI
WORKDIR /app
COPY app /app
COPY cmd.sh /
RUN ["chown", "uwsgi:uwsgi", "/cmd.sh"]

EXPOSE 9090 9191
USER uwsgi

ENTRYPOINT ["/cmd.sh"]
