#' Print Fibonacci sequence
#'
#' This function prints the Fibonacci numbers between the positions n1 and n2.
#' Here the 'n1' and 'n2' are natural numbers.
#'
#' This is just an initial test for constructing R packages using git and
#' GitHub on-line.
#'
#' @param n1 is a natural number, the first element of the sequence to be
#'           printed.
#' @param n2 also a natural number, the last element of the sequence to be
#'           printed.
#'
#' @return A vector containing Fibonacci numbers between n1 and n2.
#'
#' @export
#'
fibonacci <- function(n1=1, n2=5) {

  ## Test n2 > n1
  if(n2 <= n1)
    stop("The n2 argument must be greater than n1.\n")

  ## Definindo a sequencia
  sequencia <- numeric(n2)
  sequencia[1] <- sequencia[2] <- 1

  if(n2 >= 3)
    for (i in 3:n2)
      sequencia[i] <- sequencia[i-2] + sequencia[i-1]

  print("Fibonacci numbers between n1 and n2:")

  sequencia[n1:n2]

}
