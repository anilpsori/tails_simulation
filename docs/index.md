# SLiM forward-in-time simulation model (stabilizing selection on a polygenic trait)

This page documents the SLiM model used to generate the raw simulation data analyzed in the accompanying manuscript.

Script:
- `20250312_gamma_stabselection_200k_gammacustom.slim`

## Overview

The model simulates a diploid population (`N = 10,000`) for **110,000 generations**:
- **1–100,000:** neutral burn-in
- **100,000–110,000:** stabilizing selection on a quantitative polygenic trait

The phenotype of an individual is defined as a **weighted sum of effect sizes** of all segregating mutations in the population

## Mutation model

- Mutation rate: `2.36e-8`
- Recombination rate: `1e-8`
- Causal fraction: `FracCausal = 1` (all mutations in the defined genomic element contribute to the trait)
- Mutation type `m2` uses a *script-based* effect size distribution:
  - draw an effect from a Gamma or Gaussian distribution
  - in case of Gamma: The mean was parameterized using three different values (i.e. -0.05, -0.10, -0.20), shape=0.186
  - in case of Gamma: assign a random sign (+/-) with equal probability to obtain a symmetric distribution

## Stabilizing selection

At the end of generation **100,000**:
- The phenotype standard deviation `SD` is set to the **SD of the phenotype distribution** at that time.
- The optimum phenotype is set to the **mean phenotype** at that time and stored as `optPhenotype`.

Fitness is applied by assigning each individual a `fitnessScaling` value:
- `fitnessScaling = Baseline + dnorm(optPhenotype - phenotype, 0.0, SD) * Factor`

`Factor` scales the strength of selection (in manuscript factor=1 is standard selection, factor=100 is strong selection).

## Inputs (set via command line)

This script expects the following parameters to be provided when running SLiM:

- `inputFactor` : numeric; multiplier controlling selection strength (`Factor`)
- `inputSize` : integer; length (bp) of the simulated genomic element (`GenomeSize`)
- `gamma_mean` : numeric; mean parameter used for gamma-distributed effect sizes

Optional:
- `outdir` : output directory (default: current working directory)
- `Baseline` : baseline term in fitness scaling (default: 1.0)

## Outputs

The script produces:

1) Population summary log:
- `popstats_<disttype>_mean<gamma_mean>_size<GenomeSize>_f<Factor>_<simID>.txt`
Includes (at logging intervals): number of mutations, heterozygosity, phenotype mean, phenotype SD.

2) Mutation statistics snapshots (at selected generations):
- `mutstats_<disttype>_mean<gamma_mean>_size<GenomeSize>_f<Factor>_<simID>.txt`
Created with `sim.outputMutations(...)` and appended over time.

3) Mutation presence matrix snapshots (at selected generations):
- `mutdata_<simID>.txt`
For each sampled generation, stores mutation IDs and a presence/absence vector across all genomes.

Note: `mutdata` can become large because it records per-mutation presence across all genomes.

## Sampling schedule

Mutation-level outputs are recorded at predefined cycles (dense around the onset of selection and then sparser later), defined by `cycleinfo` in the script.
