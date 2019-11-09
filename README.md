# Rockerverse

<!-- badges: start -->
[![Launch Rstudio Binder](http://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/benmarwick/rockerverse-paper/master?urlpath=rstudio)
<!-- badges: end -->

Draft for an article of everything related to containers and R, based on http://bit.ly/docker-r.

_Want to contribute?_ See https://github.com/nuest/rockerverse-paper/issues/3.

**Render the manuscript with Docker**:

```bash
docker build --tag rockerverse .
docker run -i -v $(pwd):/rockerverse --user 1000 rockerverse Rscript -e 'setwd("/rockerverse"); rmarkdown::render("manuscript.Rmd")'
```
