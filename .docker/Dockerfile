ARG RUBY_VERSION

FROM ruby:$RUBY_VERSION

ENV APP_HOME="/workspace"
ENV NODE_VERSION 12

ARG PG_MAJOR
ARG BUNDLER_VERSION
ARG USER_ID
ARG GROUP_ID

RUN curl -sL https://deb.nodesource.com/setup_$NODE_VERSION.x | bash -

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update -qq
RUN apt-get install -y --no-install-recommends nodejs libmariadb-dev mariadb-client \
      locales yarn

RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen
RUN locale-gen
RUN export LC_ALL="en_US.utf8"

# Create a directory for the app code
RUN mkdir -p "$APP_HOME" \
  && chown -R $USER_ID:$GROUP_ID $APP_HOME \
  && addgroup --gid $GROUP_ID honey \
  && adduser --disabled-password --gecos '' --uid $USER_ID --gid $GROUP_ID honey

USER $USER_ID

# Upgrade RubyGems and install required Bundler version
RUN gem update --system && \
    gem install bundler:$BUNDLER_VERSION

# Send "ctrl-c"-like signal when stopping
STOPSIGNAL SIGINT

WORKDIR "$APP_HOME"

CMD ["/bin/sh"]