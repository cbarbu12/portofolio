FROM python:3

LABEL org.opencontainers.image.title="Cristian's portofolio"
LABEL org.opencontainers.image.authors="@cristibarbu"

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
ENV FLASK_APP=server.py
ENV FLASK_ENV="production"
CMD [ "flask", "run" , "-h", "localhost", "-p", "5000"]