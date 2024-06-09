FROM python:3.12-slim
RUN apt-get update && apt-get install -y build-essential
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir -r requirements.txt
RUN python model.py
EXPOSE 80
ENV NAME PerceptronApp
CMD ["python", "app.py"]
