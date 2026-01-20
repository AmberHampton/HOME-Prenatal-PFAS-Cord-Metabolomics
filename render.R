args <- commandArgs(trailingOnly = TRUE)
input <- if (length(args) >= 1) args[[1]] else "Serum-PFAS-and-Cord-Metabolomics.Rmd"

dir.create("outputs", showWarnings = FALSE, recursive = TRUE)

rmarkdown::render(
  input = input,
  output_dir = "outputs",
  clean = TRUE,
  envir = new.env(parent = globalenv())
)

