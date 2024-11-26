FROM python:3.12-slim

# Install required system dependencies
RUN apt-get update && apt-get install -y libpq-dev gcc

# Set up working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . /app/

CMD ["python", "manage.py", "runserver"]
