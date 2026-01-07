FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip3 install --default-timeout=300 --no-cache-dir -r requirements.txt

# Copy the rest of the application
COPY . .

#collect static files (Django)
RUN python manage.py collectstatic --noinput ||true

# Expose Django default port
EXPOSE 8000

# Run the application
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
