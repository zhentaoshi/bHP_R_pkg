FROM jupyter/r-notebook

RUN R --slave -e 'install.packages("languageserver", repos="https://cran.r-project.org/")'

RUN R --slave -e 'install.packages("jsonlite", repos="https://cran.r-project.org/")'

RUN R --slave -e 'install.packages("rlang", repos="https://cran.r-project.org/")'

RUN R --slave -e 'install.packages("devtools", repos="https://cran.r-project.org/")'

RUN conda install -c conda-forge r-magick

RUN R --slave -e 'devtools::install_github("zhentaoshi/bHP_R_pkg")'