#' Hello in parallel
#' @export
#' @import parallel
hello_parallel <- function() {
  # on.exit(tryCatch(parallel::stopCluster(cl), error = function(e) e))
  cl <- parallel::makeCluster(2)
  parallel::clusterEvalQ(cl, "hello")
}
