# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Install the dependencies
RUN pip install fastapi uvicorn yt-dlp openai requests python-docx

# Copy the rest of the application code into the container
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Run the application
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "3000"]