FROM ubuntu:18.04
RUN apt-get update && apt-get install -y \
    wget \
    && wget -O smartscope.deb https://www.lab-nation.com/package/smartscope/linux/latest/get \
    && apt-get remove -y wget \
    && apt-get autoremove -y \
    && DEBIAN_FRONTEND="noninteractive" apt-get install -y ./smartscope.deb \
    && rm -rf /var/lib/apt/lists/* smartscope.deb

CMD smartscopeserver

