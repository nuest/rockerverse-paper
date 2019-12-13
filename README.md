# Rockerverse

<!-- badges: start -->
[![Launch RStudio Binder](http://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/nuest/rockerverse-paper/master?urlpath=rstudio)
<!-- badges: end -->

Draft for an article of everything related to containers and R, originally based on the blog post http://bit.ly/docker-r.

_Want to contribute?_ See https://github.com/nuest/rockerverse-paper/issues/3.

**Current draft**: https://nuest.github.io/rockerverse-paper/master.pdf

**Render the manuscript with Docker**:

```bash
docker build --tag rockerverse --file .binder/Dockerfile .
docker run -i -v $(pwd):/rockerverse --user $UID rockerverse Rscript -e 'setwd("/rockerverse"); rmarkdown::render("manuscript.Rmd")'
```
