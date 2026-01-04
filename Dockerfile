# Use Python as base image
FROM python:3.12

# Set working directory
WORKDIR /app

# Copy your code
COPY addition.py .
COPY test_addition.py .

# Install dependencies
RUN pip install pytest

# Run tests
RUN python -m pytest test_addition.py -v

# Default command
CMD ["python", "-c", "from addition import add; print(f'2 + 3 = {add(2, 3)}')"]