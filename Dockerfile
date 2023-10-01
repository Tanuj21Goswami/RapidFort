# Use an official Python runtime as the base image, specifying Python 3.10
FROM python:3.10

# Set the working directory inside the container
WORKDIR /app

# Copy the application code into the container
COPY . /app

# Install application dependencies
RUN pip install -r requirements.txt

# Expose the port that your web application will run on (adjust if needed)
EXPOSE 8000

# Copy the entrypoint script into the container
COPY entrypoint.sh /app

# Make the entrypoint script executable
RUN chmod +x entrypoint.sh

# Define the entry point for the container
CMD ["./entrypoint.sh"]
