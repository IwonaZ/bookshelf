FROM python:3.10-slim-bullseye as builder

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Setup virtualenv to install deps into and copy.
RUN pip install poetry --no-cache-dir
RUN poetry config virtualenvs.create false

# Install dependencies.
COPY pyproject.toml poetry.lock ./

RUN poetry install --no-ansi --no-interaction --no-root -v

ENV PATH "$PATH:/app/bin"

RUN mkdir /app
WORKDIR /app

ADD . /app/

# port where the D
EXPOSE 8000
# start server
CMD python manage.py runserver

