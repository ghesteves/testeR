#' Print Fibonacci sequence
#'
#' This function prints the 'n' first Fibonacci numbers. Here the 'n' is
#' a natural number.
#'
#' This is just an initial test for constructing R packages using git and
#' GitHub on-line.
#'
#' @param n is a natural number.
#'
#' @return A vector containing the first 'n' Fibonacci numbers.
#'
#'
#'
#'
#'
#'
fibonacci <- function(n=3) {
  sequencia <- numeric(n)
  sequencia[1] <- sequencia[2] <- 1
  for (i in 3:n)
    sequencia[i] <- sequencia[i-2] + sequencia[i-1]
  print("N primeiros valores da sequência de Fibonacci:")
  sequencia
}
