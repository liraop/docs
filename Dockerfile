FROM projectatomic/ascii_binder

WORKDIR /docs

RUN curl -sSL https://rvm.io/mpapis.asc | gpg2 --import -
RUN curl -L https://get.rvm.io | bash -s stable

COPY . /docs
CMD ["bash", "/docs/docker-entrypoint.sh"]
