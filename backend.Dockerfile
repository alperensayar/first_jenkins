# Use an official Python runtime as the base image
FROM python:3.9.6-slim-buster

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file to the container
COPY requirements.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code to the container
COPY . .

# Expose the port on which the FastAPI application will run
EXPOSE 8000

# Set the command to run the FastAPI application
CMD ["uvicorn", "main:app","--reload"]
