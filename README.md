# HOME-Prenatal-PFAS-Cord-Metabolomics

Reproducible analysis workflow supporting my first-author paper on prenatal PFAS mixture exposure and the cord-serum metabolome (HOME Study).

**Paper:**  
Hall, Amber M., et al. “Associations of a Prenatal Serum Per- and Polyfluoroalkyl Substance Mixture with the Cord Serum Metabolome in the HOME Study.” *Environmental Science & Technology* 57(51) (2023): 21627–21636.

---

## Project snapshot

This repository demonstrates an end-to-end workflow for a high-dimensional omics association study:

- **Problem:** Identify cord-serum metabolomic features and biological pathways associated with **prenatal PFAS exposure**.
- **Scale:** ~**14,402** metabolomic features; **264** mother–infant dyads.
- **Modeling:** Mixture modeling via **quantile-based g-computation (qgcomp)** + single-pollutant modeling via **linear regression**.
- **Interpretation:** Pathway enrichment via **mummichog / MetaboAnalystR**.
- **Reproducibility:** Modular R code, consistent outputs to CSV, and Docker-compatible paths.

If you only click one thing: **open the rendered HTML workflow** (link below).

---

## What’s in this project

- 🧾 **Source analysis (R Markdown):** `Serum-PFAS-and-Cord-Metabolomics.Rmd`  
  Full downstream workflow starting from analysis-ready inputs (includes narrative documentation and reproducible figures/tables).
- 🌐 **Rendered report (HTML):** `Serum-PFAS-and-Cord-Metabolomics.html`  
  Best way to browse the workflow, figures, and explanations.
- 🖼️ **Figures:** `Figures/`  
  Visual artifacts used throughout the report (mix of code-generated outputs and externally created figures such as the workflow diagram).
- 🐳 **Dockerfile:** `Dockerfile`  
  Container setup to support reproducible builds.
- 🎨 **Report styling (CSS):** `style_met.css`  
  Custom styling used by the rendered workflow.

---

## Key methods (high level)

- **MWAS (mixture):** 4-PFAS mixture (PFOS, PFOA, PFHxS, PFNA) via **qgcomp** across all metabolomic features  
- **MWAS (single PFAS):** covariate-adjusted linear regression models for PFOS, PFOA, PFHxS, PFNA (+ MeFOSAA as secondary)
- **Multiple testing:** Benjamini–Hochberg FDR (exploratory threshold: 0.20)
- **Pathway enrichment:** **mummichog** implemented via **MetaboAnalystR**
- **Sensitivity analysis:** 5-PFAS mixture (4 PFAS mixture plus **MeFOSAA**)

---

## View the rendered workflow

**HTML (recommended):**  
https://raw.githack.com/AmberHall/HOME-Prenatal-PFAS-Cord-Metabolomics/main/Serum-PFAS-and-Cord-Metabolomics.html

---

## Running the code (for reviewers / researchers)

1. Open `Serum-PFAS-and-Cord-Metabolomics.Rmd`
2. Set local paths to your analysis-ready inputs
3. Run analysis sections in order (import/cleaning → MWAS → pathway enrichment)
4. Figures/tables render on knit; core results are written as CSV outputs

> This repository starts **after** upstream LC–HRMS processing and QC (those steps are summarized for transparency, but not re-run here).

---

## Data access

This study used data from the Health Outcomes and Measures of the Environment (HOME) Study. The HOME Study dataset is restricted and is not publicly available. Investigators may request access here:  
https://homestudy.research.cchmc.org/contact

---

## Citation

If you use or adapt this workflow, please cite:  
Hall, Amber M., et al. (2023) *Environmental Science & Technology* 57(51): 21627–21636.

---

## Author

Amber M. Hampton, PhD  
(See paper for full coauthor list and acknowledgments.)
