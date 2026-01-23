# Stabilising selection enriches the tails of complex traits with rare alleles of large effects

This repository accompanies the manuscript of Ori et al., preprint here: https://doi.org/10.1101/2024.09.12.612687. It describes the forward-in-time simulation model, as implemented in SLiM (v4.0), to study the role of stabilising selecting in shaping the genetic architecture of complex traits, with a focus on the tails of the trait distribution. 

Recent statistical genetics inference suggests that common variants explain most complex trait heritability, but little is known about how genetic architecture varies across the trait continuum. In our simulations, we observe a shift of rare, large-effect alleles towards the tail-ends of the trait distribution under stabilising selection. Individuals in the tails of complex traits are, depending on the strength of selection, 10-20x more likely to harbour singleton or extremely rare alleles of large effect under stabilising selection than neutrality. Such an enrichment of rare, large-effect alleles in the trait tails subject to stabilising selection could have important implications for the design of studies to detect rare variants, for our understanding of the consequences of natural selection on complex traits, and for the prediction and prevention of complex disease.

## What this simulation does

- Simulates a diploid population (`N = 10,000`) for 200,000 generations:
  - 100,000 generations neutral burn-in to reach equilibrium
  - 10,000 generations of stabilizing selection on an quantitative polygenic trait
- Mutational effects are drawn from either a heavy-tail **symmetric Gamma distribution** or a Gaussian distribution.
- Stabilizing selection is applied via a Gaussian fitness function around an optimum phenotype that is set at the start of stabilising selection.

## Documentation

A detailed description of the model, parameters, and outputs is in:
- `docs/index.md`
- `docs/20250312_gamma_stabselection_200k_gammacustom.slim`

## Status

- ✅ SLiM simulation script and parameterization of simulation model used for the manuscript is included
- 🔜 R scripts for downstream statistical analyses and figures are coming soon

## Citation

Please cite the accompanying manuscript (citation details to be updated upon publication).
