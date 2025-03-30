# Use official Python 3.12 runtime as base image
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Copy requirements file
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the bot code
COPY bot.py .

# Copy Procfile (if using Solution 1 from previous response)
COPY Procfile .

# Expose the port Koyeb will use
EXPOSE 8080

# Command to run the bot
CMD ["python", "bot.py"]
