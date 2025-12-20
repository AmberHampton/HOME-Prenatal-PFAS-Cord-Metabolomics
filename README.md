# HOME-Prenatal-PFAS-Cord-Metabolomics

Code and rendered workflow for:

Hall, Amber M., et al. “Associations of a Prenatal Serum Per- and Polyfluoroalkyl Substance Mixture with the Cord Serum Metabolome in the HOME Study.” *Environmental Science & Technology* 57(51) (2023): 21627–21636.

## What’s in this project

This project includes:

- **Source analysis (R Markdown):** `Serum PFAS and Cord Metabolomics.Rmd`  
  End-to-end analytical workflow with narrative documentation and HTML formatting for readability.
- **Rendered report (HTML):** `Serum-PFAS-and-Cord-Metabolomics.html`  
  The best way to browse the workflow, figures, and explanations.
- **Rendered report (PDF):** `Serum-PFAS-and-Cord-Metabolomics.pdf`  
  A portable, print-friendly version of the report.
- **Figures:** `Figures/`  
  Visualization artifacts used throughout the report (mix of code-generated outputs, post-processed/annotated exports, and externally created figures such as the workflow diagram).

## Methods at a glance (DS/ML-relevant)

- **High-dimensional modeling:** metabolome-wide association study (MWAS) across ~14k LC–HRMS features  
- **Mixture modeling:** quantile-based g-computation to estimate the joint effect of a PFAS mixture  
- **Single-exposure models:** covariate-adjusted linear regression for individual PFAS  
- **Multiple testing control:** Benjamini–Hochberg FDR correction  
- **Biological interpretation:** pathway enrichment via mummichog / MetaboAnalystR  
- **Reproducibility:** modular, documented analysis with reproducible figure generation (data access permitting)

## Data access

This study used data from the Health Outcomes and Measures of the Environment (HOME) Study. The HOME Study data set is restricted and is not publicly available. Investigators may request access here:  
https://homestudy.research.cchmc.org/contact

## View the rendered workflow

Open the HTML report here:  
https://raw.githack.com/AmberHall/HOME-Prenatal-PFAS-Cord-Metabolomics/main/Serum-PFAS-and-Cord-Metabolomics.html
