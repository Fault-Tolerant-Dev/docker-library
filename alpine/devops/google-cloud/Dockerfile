ARG IMAGE
FROM $IMAGE


RUN gcloud config set core/disable_usage_reporting true &&  \
    gcloud config set component_manager/disable_update_check true && \
    gcloud config set survey/disable_prompts true && \
    gcloud components remove bq

RUN rm -rf /google-cloud-sdk/.install/.backup/* && \
    rm -f /google-cloud-sdk/bin/anthoscli && \
    rm -rf /root/.config/gcloud/logs

