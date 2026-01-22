# Stabilising selection enriches the tails of complex traits with rare alleles of large effects

This repository accompanies the manuscript form Ori et al., preprint here: https://doi.org/10.1101/2024.09.12.612687. Here, we describe the core simulation code used to generate realistic populaiton genetic and complex trait data. 

The project uses forward-in-time population genetic simulations implemented using the SLiM software (v4.0) to study the role of stabilising selecting in shaping the genetic architecture of complex traits, with a focus on the tails of the trait distribution.

## Repository contents

- `docs/`  
  Documentation describing the simulation model and workflow.

- `docs/slim_simulation.slim`  
  The main SLiM script used to generate the raw population genetic and complex trait data analyzed in the manuscript.

At this stage, the repository focuses on **data generation via simulation**.  
Downstream analysis and figure-generation scripts (written in R) will be added soon

---

## Reproducibility

All results in the manuscript are based on data generated using the SLiM simulation script provided here.  
The documentation in `/docs` explains the model assumptions, parameters, and simulation workflow.
