RUN apt-get update && apt-get install -y build-essential
WORKDIR /app
COPY . /app
RUN ls -la /app
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 80
ENV NAME PerceptronApp
CMD ["python", "app.py"]
