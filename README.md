# Rockerverse

<!-- badges: start -->
[![Launch RStudio Binder](http://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/nuest/rockerverse-paper/master?urlpath=rstudio)
[![Build Status](https://travis-ci.org/nuest/rockerverse-paper.svg?branch=master)](https://travis-ci.org/nuest/rockerverse-paper)
<!-- badges: end -->

Draft for an article of everything related to containers and R, originally based on the blog post http://bit.ly/docker-r.

_Want to contribute?_ See https://github.com/nuest/rockerverse-paper/issues/3.

**Current draft**: https://nuest.github.io/rockerverse-paper/master.pdf

## Render the manuscript with Docker

```bash
docker build --tag rockerverse --file .binder/Dockerfile .
docker run -i -v $(pwd):/rockerverse --user $UID rockerverse Rscript -e 'setwd("/rockerverse"); rmarkdown::render("manuscript.Rmd")'
```

## Not included projects and packages

- `rize`, because discontinued, see #35
- `docker` ([https://bhaskarvk.github.io/docker](https://bhaskarvk.github.io/docker) has been removed from CRAN, seems unmaintained by authors
- https://github.com/svlentink/dockerfiles/blob/master/svlentink/r-base-alpine/Dockerfile because the Alpine image is quite a trivial one
- https://github.com/jlisic/R-docker-centos because CentOS images are also provided by R-hub
- https://github.com/cardcorp/card-rocker because last change 3 years ago, an all based on `rocker/r-base` - lesson learned would be interesting still, see [#15](https://github.com/nuest/rockerverse-paper/issues/15)