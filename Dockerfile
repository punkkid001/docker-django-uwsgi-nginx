FROM python
ENV PYTHONUNBUFFERED 1

# Recommend to change below line number 5~8, 10
RUN mkdir -p /opt/test
WORKDIR /opt/test

ADD requirements.txt /opt/test
RUN pip install -r requirements.txt
COPY . /opt/test
RUN python manage.py collectstatic --noinput

EXPOSE 8000
