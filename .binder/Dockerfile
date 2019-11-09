FROM rocker/binder:3.6.0
LABEL maintainer='Daniel Nüst'
USER root
RUN tlmgr init-usertree \
 && tlmgr update --self \
 && tlmgr install pgf environ placeins psnfss titlesec trimspaces palatino mathpazo setspace microtype xcolor fancyhdr 
COPY . ${HOME}
RUN chown -R ${NB_USER} ${HOME}
USER ${NB_USER}

RUN wget https://github.com/benmarwick/rockerverse-paper/raw/master/DESCRIPTION && R -e "options(repos = list(CRAN = 'http://mran.revolutionanalytics.com/snapshot/2019-11-09/')); devtools::install_deps()"

RUN rm DESCRIPTION.1; exit 0
