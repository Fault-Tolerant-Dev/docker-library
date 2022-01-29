ARG IMAGE
FROM $IMAGE

ARG TERRAFORM_DOCS_VERSION
ENV TERRAFORM_DOCS_VERSION ${TERRAFORM_DOCS_VERSION}

RUN wget "https://github.com/terraform-docs/terraform-docs/releases/download/v${TERRAFORM_DOCS_VERSION}/terraform-docs-v${TERRAFORM_DOCS_VERSION}-linux-amd64.tar.gz"
RUN tar -xvf "terraform-docs-v${TERRAFORM_DOCS_VERSION}-linux-amd64.tar.gz" && \
    install -o 0 -g 0 -m 0755 terraform-docs /usr/local/bin/terraform-docs
 \
