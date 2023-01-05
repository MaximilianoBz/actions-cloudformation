FROM ubuntu

LABEL version="1.0.0"

LABEL com.github.actions.name="CloudFormation Deploy Action for AWS"
LABEL com.github.actions.description="Deploy AWS CloudFormation Stack using AWS CLI"
LABEL com.github.actions.icon="upload-cloud"
LABEL com.github.actions.color="green"

LABEL repository="https://github.com/MaximilianoBz/actions-cloudformation"
LABEL homepage="https://github.com/MaximilianoBz/actions-cloudformation"
LABEL maintainer="Maximiliano Baez <maximilianombaez@gmail.com>"

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y awscli

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
