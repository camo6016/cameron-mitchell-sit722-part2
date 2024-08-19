# Dockerfile for book_catalog microservice
FROM python:3.12
ADD book_catalog $PWD
RUN pip install --no-cache-dir --upgrade -r $PWD/requirements.txt
CMD ["uvicorn", "main:app", "--host", "0.0.0.0"]

