library(tidyverse)

dt<-penguins

ggplot(data=dt,aes(x=body_mass,y=bill_len,color=species)) +
  geom_point() +
  geom_smooth(method="lm",se = F) +
  theme_bw()
