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

goldnumber = function(a,b) {

  ## creating some variables
  s = fibonacci(a)
  goldsequence = NULL
  goldsequence = as.vector(goldsequence)
  f = NULL
  f = as.vector(f)

  for (i in 1:length(s)) {

    if (i != length(s)) {

      goldsequence[i] = s[i+1]/s[i]
      f[i] = round(goldsequence[i],b)

    }
    else {

      break

    }

  }

  print(s)
  print('sequence of ratio beetween the n for n-1 index of fibonacci sequence:')
  print(round(goldsequence,b))

  for (i in 1:length(f)) {

    ## testing if some index from the goldsequence vector get closer of the gold number with
    ## three decimal places
    if (f[i] == 1.618){

      print(paste('needed ',i,' divisions with ',b,' decimal places to found the gold number(with 3 decimal places).'))
      break

    }

  }


}
