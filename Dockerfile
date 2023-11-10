FROM python:3.10

RUN apt-get update && \
    apt-get install -y \
    libsasl2-dev \
    libldap2-dev \
    libssl-dev \
    && rm -rf /var/lib/apt/lists/*

ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1


RUN pip install --upgrade pip

COPY ./requirements.txt .
RUN pip install -r requirements.txt

COPY . /app
WORKDIR /app




COPY ./entrypoint.sh /


ENTRYPOINT ["sh", "/entrypoint.sh"]
