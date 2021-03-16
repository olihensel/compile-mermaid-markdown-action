# offical image from https://github.com/mermaid-js/mermaid-cli
FROM minlag/mermaid-cli

WORKDIR /mmdc
COPY . /mmdc

ENV ENTRYPOINT_PATH /mmdc

RUN apt-get update && apt install -y bash procps

ENTRYPOINT [ "/mmdc/entrypoint.sh" ]
CMD [ "--help" ]
