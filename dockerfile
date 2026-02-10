FROM ubuntu

WORKDIR /app

COPY requirements.txt /app
COPY employee_pro /app

RUN apt-get update -y && \
    apt-get install -y python 3 python3-pip && \
    pip install -r requirements.txt && \
    cd employee_pro

ENTRPOINT ["python3"]
CMD ["manage.py", "runserver", "0.0.0.0:8000"]