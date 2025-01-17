FROM python:3.10.7-bullseye
WORKDIR /code
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY src/ .
COPY config/ ./config
COPY res/ ./res
RUN ls 
RUN ls /code
CMD [ "python", "./app.py" ]