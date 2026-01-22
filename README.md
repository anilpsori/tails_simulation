# Stabilising selection enriches the tails of complex traits with rare alleles of large effects

This repository accompanies the manuscript form Ori et al., preprint here: https://doi.org/10.1101/2024.09.12.612687. Here, we describe the core simulation code used to generate realistic populaiton genetic and complex trait data. 

The project used forward-in-time population genetic simulations, implemented using the SLiM software (v4.0), to study the role of stabilising selecting in shaping the genetic architecture of complex traits, with a focus on the tails of the trait distribution. Recent statistical genetics inference suggests that common variants explain most complex trait heritability, but little is known about how genetic architecture varies across the trait continuum.

In our simulations, we observe a shift of rare, large-effect alleles towards the tails of the complex trait distribution under stabilising selection. Individuals in the tails of complex traits are, depending on the strength of selection, are 10-20x more likely to harbour singleton or extremely rare alleles of large effect under stabilising selection than neutrality. Such an enrichment of rare, large-effect alleles in the tails of real complex traits subject to stabilising selection could have important implications for the design of studies to detect rare variants, for our understanding of the consequences of natural selection on complex traits, and for the prediction and prevention of complex disease.

## Repository contents

- `docs/`  
  Documentation describing the forward-in-time simulation models as implemented in SLiM.

- `docs/slim_simulation.slim`  
  The main SLiM script used to generate the raw population genetic and complex trait data under both neutrality and stabilising selection, as analyzed in the manuscript.

At this stage, the repository primarly describes simulation in SLiM and generation of data.
Downstream analysis and figure-generation scripts (written in R) will be added soon.

---

## Reproducibility

All results in the manuscript are based on data generated using the SLiM simulation script provided here.  
The documentation in `/docs` explains the model assumptions, parameters, and simulation workflow.
