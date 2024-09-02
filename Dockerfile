FROM python:3.9-slim
WORKDIR /app
COPY requirements.txt *.py /app
RUN pip install -r requirements.txt
EXPOSE 8501
CMD ["streamlit", "run", "bg_remover.py", "--server.port=8501"]