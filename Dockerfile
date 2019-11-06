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
