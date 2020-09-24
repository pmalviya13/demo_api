FROM python:3.6

LABEL author="pankaj malviya"

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
WORKDIR app
COPY . .
RUN pip install -r requirement.txt
RUN mkdir staticfiles
RUN mkdir static

RUN python manage.py makemigrations && python manage.py migrate
RUN python manage.py collectstatic --noinput
CMD exec gunicorn demo_api.wsgi:application --bind 0.0.0.0:8000 --workers 3
EXPOSE 8000
