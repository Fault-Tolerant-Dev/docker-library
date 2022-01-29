ARG IMAGE
FROM $IMAGE

ARG OCI_IMAGE_CREATED
ARG OCI_IMAGE_URL
ARG OCI_IMAGE_SOURCE
ARG OCI_IMAGE_VERSION
ARG OCI_IMAGE_REVISION
ARG OCI_IMAGE_VENDOR
ARG OCI_IMAGE_TITLE
ARG OCI_IMAGE_DESCRIPTION
ARG OCI_IMAGE_DOCUMENTATION
ARG OCI_IMAGE_AUTHORS
ARG OCI_IMAGE_LICENSES
ARG OCI_IMAGE_REF_NAME

LABEL org.opencontainers.image.created=$OCI_IMAGE_CREATED \
      org.opencontainers.image.url=$OCI_IMAGE_URL \
      org.opencontainers.image.source=$OCI_IMAGE_SOURCE \
      org.opencontainers.image.version=$OCI_IMAGE_VERSION \
      org.opencontainers.image.revision=$OCI_IMAGE_REVISION \
      org.opencontainers.image.vendor=$OCI_IMAGE_VENDOR \
      org.opencontainers.image.title=$OCI_IMAGE_TITLE \
      org.opencontainers.image.description=$OCI_IMAGE_DESCRIPTIO \
      org.opencontainers.image.documentation=$OCI_IMAGE_DOCUMENTAT \
      org.opencontainers.image.authors=$OCI_IMAGE_AUTHORS \
      org.opencontainers.image.licenses=$OCI_IMAGE_LICENSES \
      org.opencontainers.image.ref.name=$OCI_IMAGE_REF_NAME

COPY /ruby/Gemfile .
COPY /ruby/Gemfile.lock .
RUN bundle install

CMD ["ruby"]