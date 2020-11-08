FROM fluent/fluentd:v1.6-debian-1
USER root
RUN ["gem", "install", "fluent-plugin-elasticsearch", "--no-document", "--version", "3.5.2"]
RUN ["gem", "install", "fluent-plugin-filter-docker_metadata", "--no-document"]
RUN ["gem", "install", "fluent-plugin-rewrite-tag-filter", "--no-document"]
COPY ./fluent.conf /fluentd/etc/fluent.conf

# RUN apk add --update --virtual .build-deps \
#         sudo build-base ruby-dev \
#  # install plugins
#  && sudo gem install \
#         fluent-plugin-elasticsearch \
#         fluent-plugin-rewrite-tag-filter \
#         fluent-plugin-detect-exceptions \
#         fluent-plugin-forest \
#         fluent-plugin-record-reformer \
#         fluent-plugin-filter-docker_metadata \
#         fluent-plugin-filter_typecast \
#         fluent-plugin-filter_empty_keys \
#  && sudo gem sources --clear-all \
#  && apk del .build-deps \
#  && rm -rf /var/cache/apk/* \
#            /home/fluent/.gem/ruby/2.3.0/cache/*.gem