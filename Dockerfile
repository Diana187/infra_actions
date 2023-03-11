FROM python:3.7-slim
COPY requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt
COPY ./ /app
WORKDIR /app/infra_project/
CMD python manage.py runserver 0:5000
