# Use a base image with Python and Jupyter Notebook pre-installed
FROM jupyter/base-notebook:latest

# Set the working directory in the container
WORKDIR /app

# Copy the project files into the container
COPY . /app

# Install the required packages from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose the Jupyter Notebook port
EXPOSE 8888

# Launch Jupyter Notebook when the container starts
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--allow-root"]
