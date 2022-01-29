ARG IMAGE
FROM $IMAGE

ARG TERRAFORM_V12
ENV TERRAFORM_V12 ${TERRAFORM_V12}
ARG TERRAFORM_V13
ENV TERRAFORM_V13 ${TERRAFORM_V13}
ARG TERRAFORM_V14
ENV TERRAFORM_V14 ${TERRAFORM_V14}
ARG TERRAFORM_V15
ENV TERRAFORM_V15 ${TERRAFORM_V15}
ARG TERRAFORM_V1
ENV TERRAFORM_V1 ${TERRAFORM_V1}
WORKDIR /software
RUN ../install-hashicorp-tool "terraform" "${TERRAFORM_V12}" && mv "terraform" terraform${TERRAFORM_V12} && \
    ../install-hashicorp-tool "terraform" "${TERRAFORM_V13}" && mv "terraform" terraform${TERRAFORM_V13} && \
    ../install-hashicorp-tool "terraform" "${TERRAFORM_V14}" && mv "terraform" terraform${TERRAFORM_V14} && \
    ../install-hashicorp-tool "terraform" "${TERRAFORM_V15}" && mv "terraform" terraform${TERRAFORM_V15} && \
    ../install-hashicorp-tool "terraform" "${TERRAFORM_V1}" && mv "terraform" terraform${TERRAFORM_V1}


ARG PACKER_VERSION
ENV PACKER_VERSION ${PACKER_VERSION}
RUN /install-hashicorp-tool "packer" "$PACKER_VERSION"

ARG VAULT_VERSION
ENV VAULT_VERSION ${VAULT_VERSION}
RUN /install-hashicorp-tool "vault" "$VAULT_VERSION"

# Should work