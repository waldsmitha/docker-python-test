FROM python:3.12-slim

WORKDIR /app

COPY docker_python_test.py .

CMD ["python3", "docker_python_test.py"]
