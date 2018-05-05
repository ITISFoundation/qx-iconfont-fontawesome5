FROM node:8.9.2

LABEL maintainer="oetiker" \
      description="Qooxdoo Font Awesome 5 Icon Font"

# reuses user defined in base image
USER node

# qooxdoo versioning

# npm variables
#ENV NPM_CONFIG_LOGLEVEL=warn
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global

# access to bin
ENV PATH=$NPM_CONFIG_PREFIX/bin:$PATH

RUN npm install qxcompiler qooxdoo-sdk -g

WORKDIR /home/node/src
VOLUME  /home/node/src
EXPOSE 31754

ENTRYPOINT [ "qx" ]
