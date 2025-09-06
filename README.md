# BUSCO Analysis Workflow

This repository contains scripts and instructions for running **BUSCO** (Benchmarking Universal Single-Copy Orthologs) to assess genome assembly and annotation completeness.

## Overview

BUSCO evaluates the completeness of genome assemblies and annotations using evolutionarily-informed sets of orthologous genes. This workflow provides a reproducible environment for running BUSCO and its dependencies.

## Setup

1. Create a New Environment

```bash
conda create -n busco_env python=3.6
conda activate busco_env


2. Install BUSCO and Dependencies
conda install -c bioconda busco
conda install -c bioconda -c conda-forge blast hmmer augustus

3. Configure BUSCO

Set your configuration file path:

export BUSCO_CONFIG_FILE="/path/to/myconfig.ini"

4. Run BUSCO
run_BUSCO.py -i input.fasta -o output_dir -l lineage_dataset


Replace input.fasta with your genome or transcriptome file, output_dir with the directory for results, and lineage_dataset with the appropriate BUSCO lineage dataset.

Repository Structure
BUSCO-analysis/
├── scripts/                # Scripts to run BUSCO
├── env/                    # Conda environment YAML
├── example_data/           # Example input files
└── README.md               # This file

Notes

Ensure augustus and other dependencies are properly configured.

Input files must be in FASTA format.

This workflow is tested with Conda and Linux systems.

License

MIT License
