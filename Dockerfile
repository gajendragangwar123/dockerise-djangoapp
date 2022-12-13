# django dockerfile
FROM python:latest
RUN python -m pip install --upgrade pip
WORKDIR /app
ADD requirements.txt /app/
RUN pip3 install -r requirements.txt
COPY . /app/
EXPOSE 8000
RUN python manage.py migrate
CMD python manage.py runserver 0.0.0.0:8000