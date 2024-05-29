cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  depression-elixhauser-primary-care---primary:
    run: depression-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  current-depression-elixhauser-primary-care---primary:
    run: current-depression-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: depression-elixhauser-primary-care---primary/output
  depression-elixhauser-primary-care-depressn---primary:
    run: depression-elixhauser-primary-care-depressn---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: current-depression-elixhauser-primary-care---primary/output
  manicdepressive-depression-elixhauser-primary-care---primary:
    run: manicdepressive-depression-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: depression-elixhauser-primary-care-depressn---primary/output
  depression-elixhauser-primary-care-administration---primary:
    run: depression-elixhauser-primary-care-administration---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: manicdepressive-depression-elixhauser-primary-care---primary/output
  depression-elixhauser-primary-care-personality---primary:
    run: depression-elixhauser-primary-care-personality---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: depression-elixhauser-primary-care-administration---primary/output
  depression-elixhauser-primary-care-dysthymia---primary:
    run: depression-elixhauser-primary-care-dysthymia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: depression-elixhauser-primary-care-personality---primary/output
  depression-elixhauser-primary-care-letter---primary:
    run: depression-elixhauser-primary-care-letter---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: depression-elixhauser-primary-care-dysthymia---primary/output
  neurotic-depression-elixhauser-primary-care---primary:
    run: neurotic-depression-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: depression-elixhauser-primary-care-letter---primary/output
  severe-depression-elixhauser-primary-care---primary:
    run: severe-depression-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: neurotic-depression-elixhauser-primary-care---primary/output
  depression-elixhauser-primary-care-management---primary:
    run: depression-elixhauser-primary-care-management---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: severe-depression-elixhauser-primary-care---primary/output
  psychotic-depression-elixhauser-primary-care---primary:
    run: psychotic-depression-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: depression-elixhauser-primary-care-management---primary/output
  depression-elixhauser-primary-care-prolonged---primary:
    run: depression-elixhauser-primary-care-prolonged---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: psychotic-depression-elixhauser-primary-care---primary/output
  postnatal-depression-elixhauser-primary-care---primary:
    run: postnatal-depression-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: depression-elixhauser-primary-care-prolonged---primary/output
  schizoaffective-depression-elixhauser-primary-care---primary:
    run: schizoaffective-depression-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: postnatal-depression-elixhauser-primary-care---primary/output
  depression-elixhauser-primary-care-masked---primary:
    run: depression-elixhauser-primary-care-masked---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: schizoaffective-depression-elixhauser-primary-care---primary/output
  depression-elixhauser-primary-care-manicdepress---primary:
    run: depression-elixhauser-primary-care-manicdepress---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: depression-elixhauser-primary-care-masked---primary/output
  depression-elixhauser-primary-care-grief---primary:
    run: depression-elixhauser-primary-care-grief---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: depression-elixhauser-primary-care-manicdepress---primary/output
  depression-elixhauser-primary-care-treatment---primary:
    run: depression-elixhauser-primary-care-treatment---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: depression-elixhauser-primary-care-grief---primary/output
  brief-depression-elixhauser-primary-care---primary:
    run: brief-depression-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: depression-elixhauser-primary-care-treatment---primary/output
  depression-elixhauser-primary-care-service---primary:
    run: depression-elixhauser-primary-care-service---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: brief-depression-elixhauser-primary-care---primary/output
  depression-elixhauser-primary-care-first---primary:
    run: depression-elixhauser-primary-care-first---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: depression-elixhauser-primary-care-service---primary/output
  reactive-depression-elixhauser-primary-care---primary:
    run: reactive-depression-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: depression-elixhauser-primary-care-first---primary/output
  atypical-depression-elixhauser-primary-care---primary:
    run: atypical-depression-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: reactive-depression-elixhauser-primary-care---primary/output
  depression---primary:
    run: depression---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: atypical-depression-elixhauser-primary-care---primary/output
  adverse-depression-elixhauser-primary-care---primary:
    run: adverse-depression-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: depression---primary/output
  depression-elixhauser-primary-care-recurr---primary:
    run: depression-elixhauser-primary-care-recurr---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: adverse-depression-elixhauser-primary-care---primary/output
  seasonal-depression-elixhauser-primary-care---primary:
    run: seasonal-depression-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: depression-elixhauser-primary-care-recurr---primary/output
  endogenous-depression-elixhauser-primary-care---primary:
    run: endogenous-depression-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: seasonal-depression-elixhauser-primary-care---primary/output
  depression-elixhauser-primary-care-anxiety---primary:
    run: depression-elixhauser-primary-care-anxiety---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: endogenous-depression-elixhauser-primary-care---primary/output
  depression-elixhauser-primary-care-agitated---primary:
    run: depression-elixhauser-primary-care-agitated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: depression-elixhauser-primary-care-anxiety---primary/output
  other-depression-elixhauser-primary-care---primary:
    run: other-depression-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: depression-elixhauser-primary-care-agitated---primary/output
  psychogenic-depression-elixhauser-primary-care---primary:
    run: psychogenic-depression-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: other-depression-elixhauser-primary-care---primary/output
  depression-elixhauser-primary-care-unspec---primary:
    run: depression-elixhauser-primary-care-unspec---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: psychogenic-depression-elixhauser-primary-care---primary/output
  depression-elixhauser-primary-care-review---primary:
    run: depression-elixhauser-primary-care-review---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: depression-elixhauser-primary-care-unspec---primary/output
  depression-elixhauser-primary-care-disord---primary:
    run: depression-elixhauser-primary-care-disord---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: depression-elixhauser-primary-care-review---primary/output
  major-depression-elixhauser-primary-care---primary:
    run: major-depression-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: depression-elixhauser-primary-care-disord---primary/output
  vital-depression-elixhauser-primary-care---primary:
    run: vital-depression-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: major-depression-elixhauser-primary-care---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: vital-depression-elixhauser-primary-care---primary/output
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
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
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
