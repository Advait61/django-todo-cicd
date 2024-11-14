
FROM python:3.12  # or whatever version you're using
WORKDIR /data

# Install Django and any other dependencies
RUN pip install setuptools wheel && pip install django==3.2

# Copy all project files to the working directory
COPY . .

# Run Django migrations
RUN python manage.py migrate

# Command to run the Django development server (or adjust as needed)
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]



