[![Continuous Integration](https://github.com/PNNL-CompBio/coderdata/actions/workflows/main.yml/badge.svg?branch=builder_branch_JJ&event=push)](https://github.com/PNNL-CompBio/coderdata/actions/workflows/main.yml)

## Cancer Omics Drug Experiment Response Dataset 

There is a recent explosion of deep learning algorithms that to tackle the computational problem of predicting drug treatment outcome from baseline molecular measurements. To support this,we have built a benchmark dataset that harmonizes diverse datasets to better assess algorithm performance.

This package collects diverse sets of paired molecular datasets with corresponding drug sensitivity data. All data here is reprocessed and standardized so it can be easily used as a benchmark dataset for the 
This repository leverages existing datasets to collect the data
required for deep learning model development. Since each deep learning model
requires distinct data capabilities, the goal of this repository is to
collect and format all data into a schema that can be leveraged for
existing models.

![Coderdata Motivation](coderdata_overview.jpg?raw=true "Motivation behind
coderdata develompent")


The goal of this repository is two-fold: First, it aims to collate and
standardize the data for the broader community. This requires
running a series of scripts to build and append to a standardized data
model. Second, it has a series of scripts that pull from the data
model to create model-specific data files that can be run by the data
infrastructure. 

## Data access
For the access to the latest version of CoderData, please visit our
[documentation site]() which provides access to Figshare and
instructions for using the Python package to download the data.

## Data format
All coderdata files are in text format - either comma delimited or tab
delimited (depending on data type). Each dataset can be evaluated
individually according to the CoderData schema that is maintained in [LinkML](schema/coderdata.yaml)
and can be udpated via a commit to the repository. For more details,
please see the [schema description](schema/README.md).

## Building a local version

The build process can be found in our [build
directory](build/README.md). Here you can follow the instructions to
build your own local copy of the data on your machine. 

## Adding a new dataset

We have standardized the build process so an additional dataset can be
built locally or as part of the next version of coder. Here are the
steps to follow:

1. First visit the [build
directory](build/README.md) and ensure you can build a local copy of
CoderData. 

2. Checkout this repository and  create a subdirectory of the
[build directory](build) with your own build files. 

3. Develop your scripts to build the data files according to our
[LinkML Schema](schema/coderdata.yaml]). You can validate each file by
using the [linkML
validator](https://linkml.io/linkml/data/validating-data) together
with our schema file.

4. Wrap your scripts in standard shell scripts with the following names
and arguments:
| shell script     | arguments                | description         |
|------------------|--------------------------|---------------------|
| `build_samples.sh` | [latest_samples] | Latest version of samples generated by coderdata build |
| `build_omics.sh` | [gene file] [samplefile] | This includes the `genes.csv` that was generated in the original build as well as the sample file generated above. |
| `build_drugs.sh` | [drugfile1,drugfile2,...]       | This includes a comma-delimited list of all drugs files generated from previous build  |
| `build_exp.sh`| [samplfile ] [drugfile] | sample file and drug file generated by previous scripts |
| --- | --- | --- |

5. Put the Docker container file inside the [Docker
directory](./build/docker) with the name
`Dockerfile.[datasetname]`. 

Run `build_all.py` from the root directory, which should now add in
your Dockerfile in the mix.
