FROM centos/s2i-base-centos7

MAINTAINER Jeff Suess <jsuess+gh@gmail.com>

LABEL summary="Platform for building Java 8 Ant based applications" \
      io.k8s.description="Platform for building Java 8 Ant based applications" \
      io.k8s.display-name="Java 8 Ant" \
      io.openshift.tags="builder,java,ant"

RUN yum install -y centos-release-scl && \
    INSTALL_PKGS="java-1.8.0-openjdk java-1.8.0-openjdk-devel ant" && \
    yum install -y --setopt=tsflags=nodocs $INSTALL_PKGS && rpm -V $INSTALL_PKGS && \
    yum clean all -y

USER 1001

