# app/Dockerfile

FROM python:3.12-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port that Streamlit will run on (default is 8501)
EXPOSE 8501

# Command to run your Streamlit app
ENTRYPOINT ["streamlit", "run"]

CMD [ "app.py" ]
