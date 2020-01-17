FROM python:3.6

ENV PYTHONUNBUFFERED 1
# Requirements have to be pulled and installed here, otherwise caching won't work
COPY ./requirements.txt /requirements.txt
RUN pip3 install -r /requirements.txt

COPY . /app

WORKDIR /app

CMD [ "python", "test_flask.py" ]