#' \code{Obtain the first several PCs}
#'
#'
#' @param Z The `n x m` genotype matrix of data. [matrix, ]
#' @param p The first n number of PCs. [num, default p=3]
#'
#' @return return a batch of shell scripts.
#'
#' @examples
#' Z <- fread("input/Z_matrix.txt", header=T,data.table=FALSE)
#' Z = as.matrix(Z)
#' X0 <- getpca(Z, p=3)
#'
#' @export
getpca <- function(Z, p=3) {
  X0 = prcomp(Z)$x[,1:p]
  return(X0)
}
