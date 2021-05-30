FROM python:3.7-alpine

ENTRYPOINT ["certbot"]

RUN apk add --update \
  build-base \
  cairo \
  cairo-dev \
  cargo \
  freetype-dev \
  gcc \
  gdk-pixbuf-dev \
  gettext \
  jpeg-dev \
  lcms2-dev \
  libffi-dev \
  musl-dev \
  openjpeg-dev \
  openssl-dev \
  pango-dev \
  poppler-utils \
  postgresql-client \
  postgresql-dev \
  py-cffi \
  python3-dev \
  rust \
  tcl-dev \
  tiff-dev \
  tk-dev \
  zlib-dev \
  python3 \
  py3-virtualenv \
  nginx

# Add www-data user
RUN set -x ; \
  addgroup -g 82 -S www-data ; \
  adduser -u 82 -D -S -G www-data www-data && exit 0 ; exit 1

RUN rm -rf /etc/nginx

RUN python3 -m venv /opt/certbot/ \
    && /opt/certbot/bin/pip install --upgrade pip

RUN /opt/certbot/bin/pip install certbot certbot-nginx

RUN ln -s /opt/certbot/bin/certbot /usr/bin/certbot