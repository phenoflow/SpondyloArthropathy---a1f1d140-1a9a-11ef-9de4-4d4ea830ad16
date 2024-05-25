cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  spondyloarthropathy-spondylolysis---primary:
    run: spondyloarthropathy-spondylolysis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  spondyloarthropathy-dysplasia---primary:
    run: spondyloarthropathy-dysplasia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: spondyloarthropathy-spondylolysis---primary/output
  spondyloarthropathy---primary:
    run: spondyloarthropathy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: spondyloarthropathy-dysplasia---primary/output
  congenital-spondyloarthropathy---primary:
    run: congenital-spondyloarthropathy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: spondyloarthropathy---primary/output
  spondyloarthropathy-spondylolisthesis---primary:
    run: spondyloarthropathy-spondylolisthesis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: congenital-spondyloarthropathy---primary/output
  spondyloarthropathy-lumbar---primary:
    run: spondyloarthropathy-lumbar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: spondyloarthropathy-spondylolisthesis---primary/output
  spondyloarthropathy-grade---primary:
    run: spondyloarthropathy-grade---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: spondyloarthropathy-lumbar---primary/output
  spondyloepiphyseal-spondyloarthropathy---primary:
    run: spondyloepiphyseal-spondyloarthropathy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: spondyloarthropathy-grade---primary/output
  spondylopathy-spondyloarthropathy---primary:
    run: spondylopathy-spondyloarthropathy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: spondyloepiphyseal-spondyloarthropathy---primary/output
  spondyloarthropathy-fusion---primary:
    run: spondyloarthropathy-fusion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: spondylopathy-spondyloarthropathy---primary/output
  other-spondyloarthropathy---primary:
    run: other-spondyloarthropathy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: spondyloarthropathy-fusion---primary/output
  spondyloarthropathy-allied---primary:
    run: spondyloarthropathy-allied---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: other-spondyloarthropathy---primary/output
  spondyloarthropathy-inflammatory---primary:
    run: spondyloarthropathy-inflammatory---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: spondyloarthropathy-allied---primary/output
  spondyloarthropathy-spondylosis---primary:
    run: spondyloarthropathy-spondylosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: spondyloarthropathy-inflammatory---primary/output
  spondyloarthropathy-vertebra---primary:
    run: spondyloarthropathy-vertebra---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: spondyloarthropathy-spondylosis---primary/output
  spondyloarthropathy-compression---primary:
    run: spondyloarthropathy-compression---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: spondyloarthropathy-vertebra---primary/output
  spondyloarthropathy-fracture---primary:
    run: spondyloarthropathy-fracture---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: spondyloarthropathy-compression---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: spondyloarthropathy-fracture---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
