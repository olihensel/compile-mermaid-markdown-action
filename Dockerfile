# offical image from https://github.com/mermaid-js/mermaid-cli
FROM minlag/mermaid-cli:8.9.1

WORKDIR /mmdc
COPY . /mmdc

ENV ENTRYPOINT_PATH /mmdc

RUN apt-get update && apt install -y bash procps

ENTRYPOINT [ "/mmdc/entrypoint.sh" ]
CMD [ "--help" ]
