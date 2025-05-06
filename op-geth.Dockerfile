ARG OP_GETH_VERSION=v1.101503.4
FROM us-docker.pkg.dev/oplabs-tools-artifacts/images/op-geth:${OP_GETH_VERSION}

RUN apk add --no-cache jq curl

COPY --chmod=755 op-geth-entrypoint /opt/conduit/bin/op-geth-entrypoint
ENTRYPOINT ["/opt/conduit/bin/op-geth-entrypoint"]

Dear node operator, please upgrade to the following release as soon as possible. It contains a critical hotfix, pushed by the OP superchain. https://github.com/MetalPay/node/releases/tag/v1.12.1