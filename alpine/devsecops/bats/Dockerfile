ARG IMAGE
FROM $IMAGE

ARG BATS_VERSION
ENV BATS_VERSION ${BATS_VERSION}
ARG BATS_SUPPORT_VERSION
ENV BATS_SUPPORT_VERSION ${BATS_SUPPORT_VERSION}
ARG BATS_ASSERT_VERSION
ENV BATS_ASSERT_VERSION ${BATS_ASSERT_VERSION}
ARG BATS_MOCK_VERSION
ENV BATS_MOCK_VERSION ${BATS_MOCK_VERSION}

RUN wget "https://github.com/sstephenson/bats/archive/v${BATS_VERSION}.tar.gz" -O bats.tar.gz
RUN wget "https://github.com/ztombol/bats-support/archive/v${BATS_SUPPORT_VERSION}.tar.gz" -O bats-support.tar.gz
RUN wget "https://github.com/jasonkarns/bats-assert-1/archive/v${BATS_ASSERT_VERSION}.tar.gz" -O bats-assert.tar.gz
RUN wget "https://github.com/jasonkarns/bats-mock/archive/v${BATS_MOCK_VERSION}.tar.gz" -O bats-mock.tar.gz

RUN mkdir -p /build/usr/local && \
    tar -xvf bats.tar.gz bats-${BATS_VERSION}/bin/ bats-${BATS_VERSION}/libexec/ --strip-components=1 -C usr/local/ && \
    for t in *-*.tar.gz; do tar -xvf $t -C usr/local; done

