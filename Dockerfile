FROM python:3.12.11-slim-bullseye

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set work directory
WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    libpq-dev gcc && \
    pip install --upgrade pip

# Install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy project
COPY . .

# Expose port (optional)
EXPOSE 8000
# ENV ALLOWED_HOSTS=0.0.0.0;localhost;127.0.0.1

# Default command (optional)
CMD ["gunicorn", "cor.wsgi:application", "--bind", "0.0.0.0:8000"]
