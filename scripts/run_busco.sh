#!/bin/bash
# -------------------------------------------------------------------
# Script: run_busco.sh
# Purpose: Run BUSCO analysis on a genome or transcriptome FASTA file
# Usage: ./run_busco.sh input.fasta output_dir lineage_dataset
# Author: Donovin Coles
# -------------------------------------------------------------------

# Exit immediately if a command exits with a non-zero status
set -e

# Check arguments
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <input_fasta> <output_dir> <lineage_dataset>"
    exit 1
fi

INPUT_FASTA=$1
OUTPUT_DIR=$2
LINEAGE=$3

# Optional: set BUSCO config file path if needed
# export BUSCO_CONFIG_FILE="/path/to/myconfig.ini"

echo "Running BUSCO on ${INPUT_FASTA}"
echo "Output directory: ${OUTPUT_DIR}"
echo "Lineage dataset: ${LINEAGE}"

# Run BUSCO
run_BUSCO.py \
    -i "$INPUT_FASTA" \
    -o "$OUTPUT_DIR" \
    -l "$LINEAGE" \
    --mode genome \
    --cpu 4 \
    --offline

echo "BUSCO analysis complete!"
