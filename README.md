
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Rockerverse

<!-- badges: start -->

[![Launch RStudio
Binder](http://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/nuest/rockerverse-paper/master?urlpath=rstudio)
[![Build
Status](https://travis-ci.org/nuest/rockerverse-paper.svg?branch=master)](https://travis-ci.org/nuest/rockerverse-paper)
<!-- badges: end -->

Article about everything related to containers and R, originally based
on the blog post <http://bit.ly/docker-r> and now **available as a
preprint on arXiv.org: <https://arxiv.org/abs/2001.10641>**.

*Want to contribute?* See
<https://github.com/nuest/rockerverse-paper/issues/3>.

**Current draft:
<https://nuest.github.io/rockerverse-paper/master.pdf>**

![Rockerverse hex sticker](rockerverse.png)

The hex sticker uses the font [Final Frontier Old
Style](https://www.fontspace.com/allen-r-walden/final-frontier-old-style)
and the [Hubble Ultra-Deep
Field](https://en.wikipedia.org/wiki/Hubble_Ultra-Deep_Field) combined
with the Docker logo as background.

## Render the manuscript with Docker

**Local build**

``` bash
docker build --tag rockerverse-paper --file .binder/Dockerfile .
docker run -i -v $(pwd):/rockerverse --user $UID rockerverse-paper Rscript -e 'setwd("/rockerverse"); rmarkdown::render("rockerverse.Rmd")'
```

**Image from Docker Hub**

``` bash
docker run -i -v $(pwd):/rockerverse --user $UID nuest/rockerverse-paper Rscript -e 'setwd("/rockerverse"); rmarkdown::render("rockerverse.Rmd")'
```

## Not included projects and packages

  - `rize`, because discontinued, see \#35
  - `docker` (<https://bhaskarvk.github.io/docker> has been removed from
    CRAN, seems unmaintained by authors
  - <https://github.com/svlentink/dockerfiles/blob/master/svlentink/r-base-alpine/Dockerfile>
    because the Alpine image is quite a trivial one
  - <https://github.com/jlisic/R-docker-centos> because CentOS images
    are also provided by R-hub
  - `sevenbridges` includes several Dockerfiles and documentation about
    using images, and also seems to use Docker in the built workflows
    but via other tools, not directly,
    <https://sbg.github.io/sevenbridges-r/>,
    <https://github.com/sbg/sevenbridges-r/search?p=4&q=docker&unscoped_q=docker>
  - <https://github.com/rocker-jp> because it seems to have stalled soon
    after inception
  - <https://github.com/thomasp85/fiery> because no examples/docs for
    Docker (though probably trivial anyway)
  - [RStudio Connect](https://rstudio.com/products/connect/) because
    while it does use a similar mechanism to seperate processes, it does
    *not* use Docker and the comparison would require a lot of
    background explanation, and not all details are available because
    the software is proprietary
  - <https://github.com/ecohealthalliance/reservoir> is an invididual
    specific data science image container for a group - add if it fits
  - <https://itsalocke.com/blog/building-an-r-training-environment/>
    (one single container for many users in teaching, uses
    rocker/tidyverse)
