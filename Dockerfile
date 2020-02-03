# Use Python runtime as base image
FROM python:3.7

# Copy current directory
COPY . /app

# Set the working directory to /app
WORKDIR /app

# Install requirements
RUN pip install --upgrade pip
RUN pip install -r requirements.txt


EXPOSE 8888

# ENTRYPOINT
# Run when the container launches
CMD ["python", "app.py"]