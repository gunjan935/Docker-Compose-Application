#dockerfile
FROM python:3.8

#set the working directory in the container
WORKDIR /app

#copy the requirements file into the container at /app
COPY requirements.txt .

#Install Dependencies
RUN pip install -r requirements.txt

#Copy the rest of the application code into container at /app
COPY . .

#Command to run the application
CMD ["python", "app.py"]
