#!/usr/bin/env nextflow

process runCyCommands {

  container 'quay.io/kozo2/cytoscape-nextflow:latest'
  containerOptions '-it'

  input: file "cyCommands.txt"                                          
  output: file "output.txt"

  """
  ls /
  """
}
