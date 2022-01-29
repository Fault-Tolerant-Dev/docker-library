ARG IMAGE
FROM $IMAGE

ARG COOKIECUTTER_VERSION
ENV COOKIECUTTER_VERSION ${COOKIECUTTER_VERSION}

RUN pip3 --no-cache-dir \
--disable-pip-version-check \
--no-input \
install cookiecutter==${COOKIECUTTER_VERSION}

CMD ["cookiecutter"]


RUN pip3 --no-cache-dir \
--disable-pip-version-check \
--no-input \
install cookiecutter==1.7.3
