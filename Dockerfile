FROM alpine

LABEL "com.github.actions.name"="Github Action for wget"
LABEL "com.github.actions.description"="Wraps the wget CLI to be used in Github Actions"
LABEL "com.github.actions.icon"="download"
LABEL "com.github.actions.color"="gray-dark"

LABEL "repository"="http://github.com/wei/wget"
LABEL "homepage"="http://github.com/wei/wget"
LABEL "maintainer"="Wei He <github@weispot.com>"

RUN apk add --no-cache ca-certificates

ADD *.sh /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]
