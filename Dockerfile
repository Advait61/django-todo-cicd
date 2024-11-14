FROM python:3.12

WORKDIR /data

# Install Django and dependencies
RUN pip install setuptools wheel && pip install django==3.2

# Copy project files to the working directory
COPY . .

# Run Django migrations
RUN python manage.py migrate

# Command to run the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]


