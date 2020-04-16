FROM ubuntu:19.10
RUN apt-get update && apt-get install pandoc openjdk-8-jdk wget xvfb -y && wget https://github.com/cytoscape/cytoscape/releases/download/3.7.2/cytoscape-3.7.2.tar.gz && tar xf cytoscape-3.7.2.tar.gz && rm cytoscape-3.7.2.tar.gz
ENTRYPOINT ["/bin/sh", "-c", "/usr/bin/xvfb-run -a $@", ""]
