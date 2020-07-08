FROM python:3.7-slim as base

RUN apt-get update && \
    apt-get install build-essential -y

RUN sed -i 's/SECLEVEL=2/SECLEVEL=1/' /etc/ssl/openssl.cnf # Temporarily lower security to workaround opentest certs with SHA1 signatures

RUN mkdir -p /usr/src/app/sds/spine-route-lookup

COPY sds/spine-route-lookup/Pipfile /usr/src/app
COPY sds/spine-route-lookup/Pipfile.lock /usr/src/app

RUN pip install pipenv

COPY sds/common/ /usr/src/app/sds/common/
COPY sds/spine-route-lookup/ /usr/src/app/sds/spine-route-lookup

WORKDIR /usr/src/app/sds/spine-route-lookup

RUN pipenv install --deploy --ignore-pipfile

EXPOSE 80

ENTRYPOINT pipenv run start