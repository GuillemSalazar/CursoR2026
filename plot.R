library(tidyverse)
library(arm)
library(easystats)
library(visreg)

dt<-penguins

# Plot the data
ggplot(data=dt,aes(x=body_mass,y=bill_len,color=species)) +
  geom_point() +
  geom_smooth(method="lm",se = F) +
  theme_bw()

# Make an LM
m1<-lm(bill_len~body_mass+species,data=dt)
summary(m1)
parameters(m1)
