---
layout: default
title: CoderData
---

<link rel="stylesheet" href="assets/css/style.css">


### Introduction
CoderData is a cancer benchmark data package developed in Python and R. 
There are two aspects of this package, the backend build section and the user facing python package.
The build section is a github workflow that generates four cancer datasets in a format that is easy for users and algorithms to ingest. 
The python package allows users to easily download the data, load it into python and reformat it as desired.

### BeatAML Summary

Beat acute myeloid leukemia (BeatAML) data was collected though the <a href="https://biodev.github.io/BeatAML2/" target="_blank">GitHub</a> and <a href="https://www.synapse.org/#!Synapse:syn24171150" target="_blank">Synapse</a>.
This data focuses on acute myeloid leukemia tumor data. Data includes drug response, proteomics, and transcriptomics datasets.


{% if site.data.beataml_table %}
<table>
  {% for row in site.data.beataml_table %}
    {% if forloop.first %}
    <tr>
      {% for pair in row %}
        <th>{{ pair[0] }}</th>
      {% endfor %}
    </tr>
    {% endif %}

    {% tablerow pair in row %}
      {{ pair[1] }}
    {% endtablerow %}
  {% endfor %}
</table>
{% else %}
<p>BeatAML table is not available.</p>
{% endif %}


### Visualization

<div class="flex-container"> 
    <div class="flex-item">
        <img src="{{ 'assets/stats/Fig2_BeatAML.png' | relative_url }}" alt="BeatAML Figure" />
    </div>
    <div class="flex-item">
        <img src="{{ 'assets/stats/beataml_circos.png' | relative_url }}" alt="BeatAML Circos" />
    </div>
</div>
