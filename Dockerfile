From rancher/k3s as base


FROM alpine:3.9
RUN apk add -U ca-certificates
COPY --from=base /bin /bin
RUN chmod 1777 /tmp
VOLUME /var/lib/rancher/k3s
VOLUME /var/lib/cni
VOLUME /var/log
ENV PATH="$PATH:/bin/aux"
ENTRYPOINT ["/bin/k3s"]
CMD ["agent"]
