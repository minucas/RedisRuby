FROM ubuntu:14.04.4

# Install Redis-trib.rb Environment
RUN apt-get update -yq && \
    apt-get install -yq ruby curl && \
    # echo Y | curl -L --insecure get.rvm.io | bash -s stable && \
    echo insecure >> ~/.curlrc && \
    echo Y | curl -sSL https://rvm.io/mpapis.asc | gpg --import - && \
    echo Y | curl -L --insecure get.rvm.io | bash -s stable && \
    source /usr/local/rvm/scripts/rvm && \
    apt-get update && \
    echo Y | rvm install 2.3.3 && \
    echo Y | rvm use 2.3.3 && \
    echo Y | gem install redis && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean
