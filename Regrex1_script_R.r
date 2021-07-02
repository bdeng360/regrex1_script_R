library(dplyr)
library(ggplot2)
library(reshape2)
library(tidyverse)
library(readr)

args <- commandArgs(trailingOnly = TRUE)

regrex <- read.csv(args[1])

regrex

x <- regrex[, 2]

y <- regrex[, 1]

png('scatter.png')
qplot(x, y)
dev.off()

png('scatter_line.png')
ggplot(regrex, aes(x, y)) + geom_point() + stat_smooth(method = lm)
dev.off()