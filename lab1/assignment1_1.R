{
  x <- as.integer(readline(prompt = "Enter first number :"))
  y <- as.integer(readline(prompt = "Enter second number :"))
  z <- as.integer(readline(prompt = "Enter third number :"))
  
  if (x > y) {
    if (x > z)
      print(paste("Greatest  :", x))
    else
      print(paste("Greatest  :", z))
  } else  {
    if (y > z)
      print(paste("Greatest  :", y))
    else{
      print(paste("Greatest  :", z))
    }
  }
  
}

