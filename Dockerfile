# app/Dockerfile

FROM python:3.9-slim

WORKDIR /app

COPY . .

RUN pip3 install -r requirements.txt

EXPOSE 8502

ENTRYPOINT ["streamlit", "run", "app.py"]
