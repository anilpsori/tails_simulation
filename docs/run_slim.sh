#!/usr/bin/env bash

# Example script to run the SLiM simulation model
# used in the accompanying manuscript.

# ---- User-defined parameters ----
INPUT_FACTOR=1
INPUT_SIZE=100000
GAMMA_MEAN=-0.10
OUTDIR="slim_model/output"

# ---- Create output directory if it does not exist ----
mkdir -p "${OUTDIR}"

# ---- Run SLiM ----
slim \
  -d inputFactor=${INPUT_FACTOR} \
  -d inputSize=${INPUT_SIZE} \
  -d gamma_mean=${GAMMA_MEAN} \
  -d outdir=\"${OUTDIR}\" \
  docs/slim_model_stabilising_selection.slim
