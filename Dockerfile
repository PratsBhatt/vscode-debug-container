FROM python:3.8-slim-buster as base

RUN mkdir -p /app

WORKDIR /app

COPY . /app

RUN pip install --upgrade pip 

# Basically this can be extended to different environments.
# When building the docker image a target can be provided such as production or staging or testing
# And the particular environment could be debugged.
FROM base as production
RUN pip install -r requirements.txt

ENTRYPOINT [ "uvicorn" ]