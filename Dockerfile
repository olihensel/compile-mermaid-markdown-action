# offical image from https://github.com/mermaid-js/mermaid-cli
FROM minlag/mermaid-cli

WORKDIR /mmdc
COPY . /mmdc

ENV ENTRYPOINT_PATH /mmdc

ENTRYPOINT [ "/mmdc/entrypoint.sh" ]
CMD [ "--help" ]
