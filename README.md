# Rockerverse

Draft for an article of everything related to containers and R, based on http://bit.ly/docker-r.

_Want to contribute?_ See https://github.com/nuest/rockerverse-paper/issues/3.

**Render the manuscript with Docker**:

```bash
docker build --tag rockerverse .
docker run -i -v $(pwd):/rockerverse rockerverse Rscript -e 'setwd("/rockerverse"); rmarkdown::render("manuscript.Rmd")'
```
