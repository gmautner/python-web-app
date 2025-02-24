# Use an official lightweight Python image.
FROM python:3.13-slim

# Set the working directory in the container.
WORKDIR /app

# Copy the requirements file and install dependencies.
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code.
COPY app.py app.py

# Set a default PORT value and expose it.
ENV PORT=5000
EXPOSE ${PORT}

# Run the application.
CMD ["python", "app.py"]