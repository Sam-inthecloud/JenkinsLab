FROM python:3.8
# Set YOUR_NAME environment variable
ENV YOUR_NAME="sam"

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install pip dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the app will run on
EXPOSE 80

# Run the app
CMD ["python", "app.py"]
