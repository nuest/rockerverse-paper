FROM rocker/verse:latest

RUN r -e 'tinytex::tlmgr_update(); tinytex::tlmgr_install(pkgs = c("pgf", \ 
    "environ", \
    "placeins", \
    "psnfss", \
    "titlesec", \
    "trimspaces", \
    "palatino", \
    "mathpazo", \
    "setspace", \
    "microtype", \
    "xcolor", \
    "fancyhdr"))'

RUN r -e 'install.packages("kableExtra")'

# until https://github.com/rstudio/rticles/pull/261 is merged
RUN r -e 'devtools::install_github("rcannood/rticles")'