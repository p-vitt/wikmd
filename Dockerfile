FROM ubuntu:18.04

RUN apt-get update -y && \
    apt-get install -y python3-pip python3-dev pandoc git

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

ENV LANG=C.UTF-8

RUN pip3 install -r requirements.txt

COPY . /app

ENTRYPOINT [ "python3"  ]

CMD [ "wiki.py"  ]

