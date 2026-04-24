ARG OP_RETH_VERSION=v1.11.5
FROM ghcr.io/paradigmxyz/op-reth:${OP_RETH_VERSION}

COPY --chmod=755 op-reth-entrypoint /opt/conduit/bin/op-reth-entrypoint
ENTRYPOINT ["/opt/conduit/bin/op-reth-entrypoint"]
