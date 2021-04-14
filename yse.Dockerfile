FROM hrak/php-5.3

ENV REPO_URL=https://github.com/yunasc/tbdev.git

RUN set -eux; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
        git\
    ; \
    apt-get clean; \
    rm -rf /var/lib/apt/lists/*

RUN git clone $REPO_URL .
