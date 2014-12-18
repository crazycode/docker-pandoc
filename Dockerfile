FROM crazycode/docbase
MAINTAINER crazycode

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -y && apt-get install -y haskell-platform && \
    cabal update && cabal install pandoc && \
    ln -s /root/.cabal/bin/pandoc /bin/pandoc && \
    rm -rf /tmp/* /var/tmp/*

WORKDIR /source
ENTRYPOINT ["/.cabal/bin/pandoc"]
CMD ["--help"]
