FROM rocker/verse

RUN apt-get update -qq \
  && apt-get install -y --no-install-recommends \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev \
    zlib1g-dev \
    qpdf \
    nano \
    tmux \
    nmon \
    htop \
    tree

RUN tlmgr update --self \
  && tlmgr install collection-fontsrecommended

RUN install2.r --repos http://cran.r-project.org \
  tinytest \
  lintr \
  rhub \
  data.table

RUN Rscript -e \
  'remotes::install_version("roxygen2", "7.1.1", upgrade = "never")'

COPY .profile /home/rstudio/.profile
COPY .raliases /home/rstudio/.raliases
COPY rstudio-prefs.json /home/rstudio/.config/rstudio/rstudio-prefs.json
