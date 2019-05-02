FROM python:3.7-alpine

RUN apk --update add \
    build-base \
    postgresql \
    postgresql-dev \
    libpq \
    # pillow dependencies
    jpeg-dev \
    zlib-dev

RUN mkdir /www
WORKDIR /www
COPY requirements.txt /www/
RUN pip install -r requirements.txt

ENV PYTHONUNBUFFERED 1

COPY . /www/
# Add any static environment variables needed by Django or your settings file here:
ENV DJANGO_SETTINGS_MODULE=portfolio.settings
ENV SECRET_KEY=E1OmLFzqIIgq82HGYJLXL0S6IWWRwOLhY6
ENV DEBUG_VALUE=0
ENV EMAIL_HOST=smtp.gmail.com
ENV EMAIL_HOST_USER=emailconfiramation@gmail.com
ENV EMAIL_HOST_PASSWORD=ReVeTaSt0gNe2#
ENV EMAIL_PORT=587

