FROM python:3.9.12

RUN mkdir /home2/
WORKDIR /home2/

COPY main.py .
COPY requirements.txt .
RUN pip3 install -r requirements.txt
ENV PYTHONUNBUFFERED=1


CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
