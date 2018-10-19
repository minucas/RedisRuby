FROM ubuntu:14.04.4

# Install Redis-trib.rb Environment
RUN apt-get update -yq && \
    apt-get install -yq ruby curl && \
    curl -L --insecure get.rvm.io | bash -s stable && \
    echo insecure >> ~/.curlrc && \
    curl -sSL https://rvm.io/mpapis.asc | gpg --import - && \
    curl -L --insecure get.rvm.io | bash -s stable && \
    source /usr/local/rvm/scripts/rvm && \
    apt-get update && |
    rvm install 2.3.3 && \
    rvm use 2.3.3 && |
    gem install redis && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean
