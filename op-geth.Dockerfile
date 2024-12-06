ARG OP_GETH_VERSION=v1.101411.3
FROM us-docker.pkg.dev/oplabs-tools-artifacts/images/op-geth:${OP_GETH_VERSION}

RUN apk add --no-cache jq curl

COPY --chmod=755 op-geth-entrypoint /opt/conduit/bin/op-geth-entrypoint
ENTRYPOINT ["/opt/conduit/bin/op-geth-entrypoint"]
