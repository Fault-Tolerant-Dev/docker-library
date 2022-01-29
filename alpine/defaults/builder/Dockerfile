# kics-scan disable=fd54f200-402c-4333-a5a4-36ef6709af2f

ARG IMAGE
FROM $IMAGE

RUN apk --no-cache add build-base coreutils bash parallel curl findutils git g++ jq diffutils rsync gettext libintl util-linux

CMD ["/bin/bash"]