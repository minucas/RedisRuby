FROM redis

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -y update \
  && apt-get -y upgrade \
  && apt-get -y --no-install-recommends install ruby \
  && gem install redis \
  && apt-get -y autoremove \
  && apt-get -y clean
