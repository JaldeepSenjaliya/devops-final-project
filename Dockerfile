# Use an official Python runtime as a parent image
FROM python:3
# Add the script to dockerfile
ADD jaldeep_patel.py /
# Make port 80 available to the world outside this container
EXPOSE 80
# Add this line to your Dockerfile to install random
RUN pip install pystrich
# To execute the script
CMD ["python", "./jaldeep_patel.py"]



# sh 'docker build -t jaldeeppatel/myprojecttest:v0.3 .'
# sh 'docker login'
# sh 'docker tag myprojecttest:v0.3 jaldeeppatel/my-test-repository:myprojectimage2'
# sh 'docker push jaldeeppatel/my-test-repository:myprojectimage2'
