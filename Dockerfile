FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.5

RUN gem install binary_puzzle_solver --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["binary-puzzle-solve"]
CMD ["--help"]
