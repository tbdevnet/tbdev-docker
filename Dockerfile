FROM hrak/php-5.3

RUN set -eux; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
        subversion\
        libapache2-mod-svn\
    ; \
    apt-get clean; \
    rm -rf /var/lib/apt/lists/*

ENV SVN_URL=https://svn.code.sf.net/p/tbdevnet/code

RUN svn cleanup; \
    svn co $SVN_URL

WORKDIR code/trunk/TB