# app/Dockerfile

FROM python:3.9-slim

WORKDIR /app/cyberbullying-tool-detection

COPY . .

RUN pip3 install -r requirements.txt

EXPOSE 8502

HEALTHCHECK CMD curl --fail http://localhost:8502/_stcore/health

ENTRYPOINT ["streamlit", "run", "app.py", "--server.port=8502", "--server.address=0.0.0.0"]