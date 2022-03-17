FROM alpine:20220316 as builder

RUN apk add --no-cache git

ARG GREETING_REF=packages/greeting/v1.0.0

RUN git clone --depth 1 --branch "$GREETING_REF" https://github.com/alexg-axis/renovate-14520.git

FROM alpine:20220316

RUN apk add --no-cache bash

COPY --from=builder renovate-14520/packages/greeting/lib.sh greeting.sh
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
