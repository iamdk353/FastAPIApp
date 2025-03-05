# Use an official Python image as the base
FROM python:3.10

# Set the working directory inside the container
WORKDIR /app

# Copy all files from the current directory to /app inside the container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose FastAPI port
EXPOSE 8000

# Command to start FastAPI
CMD ["uvicorn", "shu:app", "--host", "0.0.0.0", "--port", "8000"]
