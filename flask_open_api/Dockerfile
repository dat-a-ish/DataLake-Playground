# Use a lightweight Python image
FROM python:3.10-slim

# Install dependencies
RUN pip install flask

# Copy application files
COPY . /flask_open_api

# Run the Flask app
CMD ["python", "/flask_open_api/app.py"]