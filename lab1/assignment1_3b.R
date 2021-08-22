{
  recur_sum <- function(n) {
    if(n <= 1) {
      return(n)
    } else {
      return(n + recur_sum(n-1))
    }
  }
  recur_sum(7)
}




