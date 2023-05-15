library(tidyverse)
library(dplyr)
library(data.table)

diamonds

diamonds%>%
  select(carat,cut,price,z)%>%
  filter(cut == "Premium")%>%
  filter(price > 5000 & price <8000)%>%
  arrange(desc(carat))%>%
  slice(1:30)
