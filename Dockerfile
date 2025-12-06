# Use python runtime
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy requirements first
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY castle.python .

# Expose application port
EXPOSE 8080

# non-root user for security
RUN useradd --create-home appuser && chown -R appuser:appuser /app
USER appuser

# Default command to run the app
CMD ["python", "castle.py"]