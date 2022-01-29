ARG IMAGE
FROM $IMAGE

ARG RUBY_VERSION
ENV RUBY_VERSION ${RUBY_VERSION}
ARG BUNDLER_VERSION
ENV BUNDLER_VERSION ${BUNDLER_VERSION}

RUN apk update && \
apk add --no-cache \
ruby=${RUBY_VERSION} \
ruby-dev=${RUBY_VERSION} \
ruby-bundler=${BUNDLER_VERSION}

RUN ruby --version && \
    gem --version && \
    bundler --version

CMD ["ruby"]