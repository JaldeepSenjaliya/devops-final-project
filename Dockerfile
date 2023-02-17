# Use an official Python runtime as a parent image
FROM python:latest
# Set the working directory to /app
WORKDIR /devops-final-project
# Copy the current directory contents into the container at /app
COPY . /devops-final-project
# Install any needed packages specified in requirements.txt
# RUN pip install --trusted-host pypi.python.org -r requirements.txt
# Make port 80 available to the world outside this container
EXPOSE 80
# Define environment variable
ENV NAME World
# Run app.py when the container launches
CMD ["python3", "jaldeeppatel.py"]
# Set proxy server, replace host:port with values for your servers
