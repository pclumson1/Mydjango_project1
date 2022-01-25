# This will be the Dockerfile

#Pull the base image
From python:3.8

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1


# Set work directory
WORKDIR /code

# Install dependencies
COPY Pipfile Pipfile.lock /code/
Run pip install pipenv && pipenv install --system

# Copy the project into code directory
Copy . /code/
