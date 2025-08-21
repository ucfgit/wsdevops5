FROM python:3.9-slim
WORKDIR /app
COPY tpcicd.py .
CMD ["python", "tpcicd.py"]
