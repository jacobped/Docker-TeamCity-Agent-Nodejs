########################################################################
# Based on the official TeamCity Agent image with Nodejs added on top. #
########################################################################

FROM jetbrains/teamcity-agent:latest

ARG BUILD_DATE
ARG VCS_REF

MAINTAINER jacobpeddk
LABEL maintainer="jacobpeddk"
LABEL org.label-schema.build-date=$BUILD_DATE
LABEL org.label-schema.vcs-url="https://github.com/jacobped/Docker-TeamCity-Agent-Nodejs"
LABEL org.label-schema.vcs-ref=$VCS_REF


# Install nodejs and build-essential as needed by some npm packages.
USER root
RUN apt-get update && \
	apt-get install -y build-essential && \
	curl -sL https://deb.nodesource.com/setup_16.x | bash - && \
	apt-get install -y nodejs && \
	apt-get clean all && \
	rm -rf /var/lib/apt/lists/*

COPY docker_opts.sh /services/docker_opts.sh
