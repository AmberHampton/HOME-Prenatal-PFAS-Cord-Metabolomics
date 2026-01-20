FROM rocker/verse:4.4.2

# System dependencies commonly required by MetaboAnalystR + friends
# (based on MetaboAnalystR docs + reported Ubuntu install issues)
RUN apt-get update && apt-get install -y --no-install-recommends \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev \
    libcairo2-dev \
    libnetcdf-dev \
    libxt-dev \
    libfontconfig1-dev \
    libfreetype6-dev \
    libharfbuzz-dev \
    libfribidi-dev \
    libpng-dev \
    libjpeg-dev \
    libtiff5-dev \
    libzmq3-dev \
    glpk-utils \
    libglpk-dev \
    graphviz \
    libgraphviz-dev \
    && rm -rf /var/lib/apt/lists/*

# CRAN packages you use (add/remove as needed)
RUN R -q -e 'install.packages(c( \
  "rmarkdown","knitr","tidyverse","data.table","readr","dplyr","stringr", \
  "ggplot2","patchwork","cowplot","ggrepel","ggvenn","pheatmap","corrplot", \
  "qgcomp","bkmr" \
), repos="https://cloud.r-project.org")'

# Bioc + MetaboAnalystR deps, then MetaboAnalystR itself
RUN R -q -e 'install.packages(c("BiocManager","remotes"), repos="https://cloud.r-project.org"); \
  BiocManager::install(c( \
    "impute","pcaMethods","globaltest","GlobalAncova","Rgraphviz","preprocessCore", \
    "genefilter","sva","limma","KEGGgraph","siggenes","BiocParallel","MSnbase", \
    "multtest","RBGL","edgeR","fgsea" \
  ), update=FALSE, ask=FALSE); \
  install.packages(c("crmn","httr","qs"), repos="https://cloud.r-project.org"); \
  remotes::install_github("xia-lab/MetaboAnalystR", upgrade="never", build=TRUE, \
    build_vignettes=FALSE, build_manual=FALSE)'

# Hard fail the build if MetaboAnalystR didn't install
RUN R -q -e 'stopifnot(requireNamespace("MetaboAnalystR", quietly=TRUE)); \
             cat("MetaboAnalystR version:", as.character(packageVersion("MetaboAnalystR")), "\n")'

WORKDIR /project

CMD ["R","-q","-e","sessionInfo()"]
