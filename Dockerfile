# Base Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Install python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy project files
COPY . .

# Expose Django default port
EXPOSE 8000

# Default command (production use gunicorn, dev use runserver)
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
