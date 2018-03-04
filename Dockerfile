FROM python:3.6

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY ./requirements.txt ./requirements.txt
RUN pip install -r requirements.txt


COPY . .

ENV PYTHONUNBUFFERD 1
ENV PYTHONPATH /usr/src/app
ENV FLASK_APP app
CMD [ "flask", "run", "-h", "0.0.0.0" ]


