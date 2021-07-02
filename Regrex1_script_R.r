library(dplyr)
library(ggplot2)
library(reshape2)
library(tidyverse)
library(sys)
library(readr)

regrex <- read.csv(sys.argv[1])
"loading {}".format(sys.argv[1])

regrex

x <- regrex[, 2]

y <- regrex[, 1]

qplot(x, y)

ggplot(regrex, aes(x, y)) + geom_point() + stat_smooth(method = lm)


