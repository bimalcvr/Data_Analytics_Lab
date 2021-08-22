{
#nums = c(10, 20, 30)

#print(nums)   
#print(paste("Maximum value r:",max(nums)))
  maximum=function(a,b,c)
  {
    max=a;
    if(b>max)
      max=b;
    if(c>max)
      max=c;
    return(max);
  }
  maximum(160,122,123)

}
