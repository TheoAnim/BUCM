# Compare Models Using Paretho-Smoothed Importance Sampling Leave-One-Out
# Calculates the PSIS-LOO for multiple
# Bayesian models fit using JAGS and returns a comparison table.
loo_comparison <- function(models, thresh) {
  # models <- jagsoutput$models
  model_names <- c("poisson", "zip", "negbinom")
  loo_values <- furrr::future_map(models, \(x) x$BUGSoutput$sims.list$loglik) |>
    furrr::future_map(loo::loo) |>
    furrr::future_map_dbl(\(x) x$estimates["looic", "Estimate"])
  data.frame(
    model_names = model_names,
    loo = loo_values
  )
}
