# BUCM

**BUCM** (Bayesian Underreported Count Models) is an R package for Bayesian analysis of count data with accounting for potential underreporting. The package provides estimation for one-sample and two-sample Poisson, zero-inflated Poisson (ZIP), and negative binomial models. The package assumes either a validation sub-sample or informative priors are available as additional inputs with the main study data.
BUCM provides estimates for naive models, which assume no underreporting, and underreported models that account for incomplete reporting. Model estimation is performed using Markov chain Monte Carlo (MCMC) methods through JAGS.  The package also performs model comparison using DIC, WAIC, and PSIS-LOO in order to determine which of the three count data models fits the observed data the best.

# Features

- Bayesian estimation using MCMC
- Models for underreported count data
- One- and two-sample analyses
- Naive models that ignore underreporting
- DIC, WAIC, and PSIS-LOO for model comparison
- Posterior summaries and diagnostic plots


# Getting started
```r
pak::pkg_install("TheoAnim/BUCM")
```
For a detailed introduction, including model formulation and examples, see the **BUCM** [vignette](https://theoanim.github.io/BUCM/articles/vignette.html).