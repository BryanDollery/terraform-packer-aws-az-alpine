from bryandollery/terraform-packer-aws-alpine

run apk add --no-cache python3 \
                       make \
                       coreutils \
                       openssl \
                       jq \
                       bash \
                       vim \
                       curl \
                       wget \
                       unzip && \
    apk add --virtual=build gcc \
                            libffi-dev \
                            musl-dev \
                            libxml2-dev \
                            libxslt-dev \
                            linux-headers \
                            gcc \
                            libffi \
                            python3-dev \
                            openssl-dev && \
    ln -sf python3 /usr/bin/python && \
    python3 -m ensurepip --upgrade && \
    ln -sf /usr/bin/pip3 /usr/bin/pip && \
    pip uninstall -y cryptography && \
    pip install --no-cache --upgrade setuptools pyOpenSSL cryptography && \
    pip install azure-cli && \
    apk del --purge build
