# Step 1: Specify the base image
FROM python:3.12-slim

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy only dependency files to leverage Docker caching
COPY requirements.txt .

# Step 4: Install the required packages
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Copy the rest of the application source code
COPY . .

# Step 6: Expose the port the app runs on
EXPOSE 8080

# Step 7: Define the command to run the application
CMD ["python", "main.py"]
