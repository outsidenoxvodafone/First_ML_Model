FROM python:3.7.12-slim

COPY . /app

WORKDIR /app

RUN pip install -r requirements.txt

ENTRYPOINT ["python",  "src/train.py"]
