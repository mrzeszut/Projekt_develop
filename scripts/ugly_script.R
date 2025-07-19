
myfunc=function(x){y=0;for(i in 1:length(x)){y=y+x[i]^2};return(y)}
df<-read.csv("data/airtravel.csv");df$Total<-df$Jan+df$Feb+df$Mar;print(head(df))
library(dplyr);df%>%group_by(Month)%>%summarise(Total=sum(Total))->res;print(res)
if(sum(res$Total)>10000){print("BIG")}else{print("small")}
