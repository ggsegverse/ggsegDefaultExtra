

<!-- README.md is generated from README.qmd. Please edit that file -->

# ggsegDefaultExtra <img src='man/figures/logo.png' align="right" height="138.5" />

<!-- badges: start -->

[![DOI](https://zenodo.org/badge/250292657.svg)](https://zenodo.org/badge/latestdoi/250292657)
[![Codecov test
coverage](https://codecov.io/gh/LCBC-UiO/ggsegDefaultExtra/branch/master/graph/badge.svg)](https://codecov.io/gh/LCBC-UiO/ggsegDefaultExtra?branch=master)
[![R build
status](https://github.com/LCBC-UiO/ggsegDefaultExtra/workflows/R-CMD-check/badge.svg)](https://github.com/LCBC-UiO/ggsegDefaultExtra/actions)
<!-- badges: end -->

This package contains dataset for plotting the extra datasets based on
the default ggseg and ggseg3d atlases: Desikan-Killany cortical atlas
(`dk`) and the aseg subcrotical atlas.

`dkextra` contains both superior and inferior views of the inflated
brain for the dk-atlas `hcpa()` contains the aseg atlas, with additional
division of the hippocampus into anterior and posterior parts

## Installation

We recommend installing the ggseg-atlases through the ggseg
[r-universe](https://ggseg.r-universe.dev/ui#builds):

``` r
options(repos = c(
  ggseg = "https://ggseg.r-universe.dev",
  CRAN = "https://cloud.r-project.org"
))

install.packages("ggsegDefaultExtra")
```

You can install from [GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("LCBC-UiO/ggsegDefaultExtra")
```

## Example

``` r
library(ggsegDefaultExtra)
library(ggseg)
library(ggplot2)

ggplot() +
  geom_brain(
    atlas = dkextra(),
    mapping = aes(fill = label),
    position = position_brain(hemi ~ view),
    show.legend = FALSE
  ) +
  scale_fill_manual(values = dkextra()$palette, na.value = "grey") +
  theme_void()
```

<img src="man/figures/README-2d-plot-dkextra-1.png"
style="width:100.0%" />

### hcpa (3D only - subcortical atlas)

``` r
library(ggseg3d)

ggseg3d(atlas = hcpa()) |>
  pan_camera("right lateral")
```

<img src="man/figures/README-3d-plot.png" style="width:100.0%" />
