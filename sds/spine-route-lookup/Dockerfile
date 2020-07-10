FROM nhsdev/nia-spine-directory-service-base:1.0.0

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