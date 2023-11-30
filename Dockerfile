FROM arm64v8/python:3.7.12-slim

WORKDIR /app

COPY ./requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY ./src ./src
EXPOSE 8069

CMD ["flask","--app", "./src/hello" ,"--debug","run","--host=0.0.0.0", "--port=8069" ]
