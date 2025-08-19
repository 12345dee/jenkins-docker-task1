# Use Python base image
FROM python:3.11-slim

# Set working directory in container
WORKDIR /app

# Copy files from your local folder to container
COPY . /app

# Install dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000 to access Flask app
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]
