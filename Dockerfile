FROM debian:bullseye

ENV DEBIAN_FRONTEND noninteractive
ENV HEP_SERVER=localhost
ENV HEP_PORT=9060
ENV TZ=Asia/Ho_Chi_Minh

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update -qq && \
    apt-get install -y \
    git \
    curl \
    wget \
    ca-certificates \
    gnupg2 \
    dirmngr \
    python3-pip \
    libpq-dev \
    runit   \
    procps  \
    parallel \
    sudo \
    pkg-config \
    file \
    && rm -rf /var/lib/apt/lists

RUN curl -s https://packagecloud.io/install/repositories/qxip/sipcapture/script.deb.sh | bash
RUN apt-get install heplify && rm -rf /var/lib/apt/lists

ADD units /
RUN ln -s /etc/sv/* /etc/service

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]