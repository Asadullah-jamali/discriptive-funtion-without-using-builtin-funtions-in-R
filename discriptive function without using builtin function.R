des=funtion(x){
  n=length(x)
  s=sum()
  m=sum(x)/n
  y=sort(x)
  if(n%%2==0){
    m1=n/2
    m2=m1+1
    med=(y[m1]+y[m2])/2
  }else{
    m1=(n+1)/2
    med=y[m1]
  }
  v=sum((x-m)^2)/(n-1)
  s.d=v^0.5
  
  m4=sum((x-m)^4)/(n-1)
  m3=sum((x-m)^3)/(n-1)
  skew=(m3^2)/(v^3)
  kurt=(m4)/(v^2)
  cat('sum= ',s,'\nmean ',m,'\nmedian= ',med,'\nvariance= ',v,'\nS.d= ',s.d,'\nskew= ',skew,'\nkutosis= ',kurt,'\n')
}