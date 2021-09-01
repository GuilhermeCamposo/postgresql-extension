FROM centos/postgresql-96-centos7:latest

LABEL "io.openshift.s2i.build.source-location"="/Users/gdossant/work/git/github/postgresql-extension/scripts" \
      "io.openshift.s2i.build.image"="centos/postgresql-96-centos7:latest"


USER root

COPY scripts/ /tmp/src

RUN chown -R 26:0 /tmp/src

USER 26

RUN /usr/libexec/s2i/assemble

CMD /usr/libexec/s2i/run
