FROM python:3.4

RUN pip install --upgrade pip && \
  pip install Flask
WORKDIR /app
# COPY app /app

CMD ["python", "identidock.py"]
