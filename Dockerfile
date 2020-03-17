FROM debian:10-slim

RUN set -eux \
    && export DEBIAN_FRONTEND=noninteractive \
    && apt-get update \
    && apt-get -y --no-install-recommends install \
    && apt-get install -y libpq-dev libmicrohttpd-dev check git build-essential \
    && apt-get -y --purge autoremove \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/thumbtack/pgdoctor.git && cd pgdoctor \
    && make && make install

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT /entrypoint.sh
