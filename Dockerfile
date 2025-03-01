FROM python:3.9
COPY hello-devops /app
WORKDIR /app
RUN pip install -r requirements.txt
CMD ["python", "app.py"]
