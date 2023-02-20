#!/usr/bin/env Rscript
suppressPackageStartupMessages({
    library(data.table)
    library(ggplot2)
})

if (interactive()) {
    .args <- c(
        "data/data.csv",
        ""
    )
} else {
    .args <- commandArgs(trailingOnly = TRUE)
}

df <- fread(.args[1])

p <- ggplot(df, aes(x = a, y = b)) +
    geom_point()

ggsave(tail(.args, 1),
    plot = p,
    width = 6, height = 6,
    units = "in")