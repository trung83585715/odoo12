FROM python:3.5-alpine


RUN mkdir -p /opt/odoo/12
COPY . /opt/odoo/12

RUN apk update
RUN apk upgrade
RUN apk add build-base
RUN apk add libxslt-dev
RUN apk add jpeg-dev
RUN apk add openldap-dev
RUN apk add postgresql-dev
RUN apk add linux-headers
RUN pip install -r /opt/odoo/12/requirements.txt --no-cache-dir
RUN apk add nodejs-npm
RUN npm install -g less

CMD ['python', 'odoo-bin']