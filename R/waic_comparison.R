# Compare Models Using WAIC
# Calculates the Widely Applicable Information Criterion (WAIC) for multiple
# Bayesian models fit using JAGS and returns a comparison table.

waic_comparison <- function(models, thresh) {
  model_names <- c("poisson", "zip", "negbinom")
  waic_values <- furrr::future_map(models, \(x) x$BUGSoutput$sims.list$loglik) |>
    furrr::future_map(loo::waic) |>
    furrr::future_map_dbl(\(x) x$estimates["waic", "Estimate"])
  data.frame(
    model_names = model_names,
    waic = waic_values
  )
}
