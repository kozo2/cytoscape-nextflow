#!/usr/bin/env nextflow

#cyCommandsFile = "${baseDir}/cyCommands.txt"

process runCyCommands {
  container "quay.io/kozo2/cytoscape-nextflow"

  input:
  file "cyCommands.txt"                                          

  output:
  file "output.txt"

  """
  /cytoscape-unix-3.7.2/cytoscape.sh --script cyCommands.txt
  """
}
