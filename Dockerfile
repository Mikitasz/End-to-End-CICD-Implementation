# Use the official Python image as a base image
FROM python:alpine3.19
LABEL authors="Mikita Shmyhaliou"
# Set the working directory
WORKDIR /app

# Set environment variables to optimize Python
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV a=$(python
# Install build dependencies
RUN apk update  && pip install django boto3 django-storages

# Copy the entire project to the working directory
COPY . .

# Expose the port that the application will run on
EXPOSE 8000


# Run application using uWSGI
#ENTRYPOINT ["ls","-l"]
#CMD ["uwsgi", "--ini", "/app/etc/uwsgi.ini"]
CMD ["python", "manage.py", "runserver","0.0.0.0:8000"]


