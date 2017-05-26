cwlVersion: v1.0
class: CommandLineTool

baseCommand: ["rsem-calculate-expression"]

requirements:
  - class: InlineJavascriptRequirement

arguments:
  - "--star"
  - "--keep-intermediate-files"
  - "--no-bam-output"
  - valueFrom: $(inputs.rsem_index_dir.path + "/" + inputs.rsem_index_prefix)
    position: 2

inputs:
  threads:
    type: int
    inputBinding:
      prefix: -p

  fastq:
    type: File
    inputBinding:
      position: 1

  rsem_index_dir:
    type: Directory

  rsem_index_prefix:
    type: string

  rsem_output_prefix:
    type: string
    inputBinding:
      position: 3

outputs:
  genes_result:
    type: File
    outputBinding:
      glob: "*.genes.results"

  isoforms_result:
    type: File
    outputBinding:
      glob: "*.isoforms.results"

  readsPerGene:
    type: File
    outputBinding:
      glob: "*temp/*ReadsPerGene.out.tab"

  star_logs:
    type: File[]
    outputBinding:
      glob: "*temp/*.out"

  stat:
    type: Directory
    outputBinding:
      glob: "*.stat"
