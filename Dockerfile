FROM python:3.7-slim

# uWSGI will listen on this port
EXPOSE 8000

# Add any static environment variables needed by Django or your settings file here:
ENV DJANGO_SETTINGS_MODULE=Portfolio.settings
ENV SECRET_KEY=E1OmLFzqIIgq82HGYJLXL0S6IWWRwOLhY6
ENV DEBUG_VALUE=FALSE
ENV EMAIL_HOST=smtp.gmail.com
ENV EMAIL_HOST_USER=emailconfiramation@gmail.com
ENV EMAIL_HOST_PASSWORD=ReVeTaSt0gNe2#
ENV EMAIL_PORT=587

