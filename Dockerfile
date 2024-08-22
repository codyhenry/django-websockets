# * DO NOT USE THIS DOCKERFILE WITH DEVCONTAINERS
FROM python:3.11-bullseye

ENV PYTHONUNBUFFERED=1

WORKDIR /app

# ! Automatically installs necessary dependencies, to add any additional packages, add them to requirements.txt
# [Optional] If your requirements rarely change, uncomment this section to add them to the image.
COPY requirements.txt /tmp/pip-tmp/

RUN pip3 --disable-pip-version-check --no-cache-dir install -r /tmp/pip-tmp/requirements.txt \
   && rm -rf /tmp/pip-tmp


COPY . /app/

#! Runs migrations only after the image is built. 
WORKDIR /app/socketsdemo

RUN python manage.py makemigrations

RUN python manage.py migrate


CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

# [Optional] Uncomment this section to install additional OS packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>

