ARG OP_NODE_VERSION=v1.12.1
FROM us-docker.pkg.dev/oplabs-tools-artifacts/images/op-node:${OP_NODE_VERSION}

RUN apk add --no-cache jq curl

COPY --chmod=755 op-node-entrypoint /opt/conduit/bin/op-node-entrypoint
ENTRYPOINT ["/opt/conduit/bin/op-node-entrypoint"]