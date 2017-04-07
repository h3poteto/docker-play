FROM h3poteto/activator

USER root

RUN set -x && \
    curl -sL https://deb.nodesource.com/setup_6.x | bash - && \
    apt-get install -y --no-install-recommends \
    build-essential \
    nodejs && \
    rm -rf /var/lib/apt/lists/*

USER scala
