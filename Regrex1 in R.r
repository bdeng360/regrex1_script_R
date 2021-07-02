library(dplyr)

library(ggplot2)

library(reshape2)

library(tidyverse)

library(readr)

regrex <- read.csv("https://raw.githubusercontent.com/bdeng360/regrex1_in_R/main/regrex1.csv")

regrex

x <- regrex[, 2]

y <- regrex[, 1]

qplot(x, y)

ggplot(regrex, aes(x, y)) + geom_point() + stat_smooth(method = lm)


