# Use the official Python image as a base image
FROM python:3.8

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory inside the container
WORKDIR /code

# Copy the dependencies file to the working directory
COPY requirements.txt /code/

# Install dependencies
RUN pip install --upgrade pip && pip install -r requirements.txt

# Copy the project files to the working directory
COPY . /code/
