#' Applies and prints the golden ratio to each index(n by n-1) of a Fibonacci sequence
#'
#' This function print a Fibonacci sequence and a sequence of ratio between the n-th and index n-1
#' according with the second argument that's determinate how many decimals places be needed to get the
#' rounded gold number.
#' This function show too how many ratios has been calculated for get a
#' approximation of the gold number with 3 decimals places.
#'
#' This is just an initial test for constructing R packages using git and
#' GitHub on-line.
#'
#' @param a is a positive integer number, the argument used for generate a Fibonacci sequence.
#'
#' @param b also a positive integer number, the argument used for determinate how many decimal
#'           places needed for approximation.
#'
#' @return two vectors with the Fibonacci sequence and the gold ratio between n-th and the index n-1.
#'
#' @export
#'
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
  print('sequence of ratio between the n for n-1 index of fibonacci sequence:')
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
