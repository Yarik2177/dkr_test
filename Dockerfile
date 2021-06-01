FROM python:3.8
EXPOSE 80
ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1

WORKDIR /new_dir1
COPY requirements.txt .
RUN ["pip", "install", "-r", "requirements.txt"]

COPY . /new_dir1
ENTRYPOINT ["python", "manage.py", "runserver", "127.0.0.1:8000"]