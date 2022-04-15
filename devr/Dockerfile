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
    tree \
    ncdu

RUN install2.r --repos http://cran.r-project.org \
  logger \
  tinytest \
  lintr \
  rhub \
  data.table \
  sparklyr \
  flexdashboard \
  DT \
  languageserver

RUN Rscript -e \
  'remotes::install_version("roxygen2", "7.1.1", upgrade = "never")'

RUN Rscript -e \
  'sparklyr::spark_install("3.1")'

RUN tlmgr update --self \
  && tlmgr install collection-fontsrecommended

COPY .raliases .profile /home/rstudio/
COPY rstudio-prefs.json /home/rstudio/.config/rstudio/rstudio-prefs.json
RUN chown -R rstudio:rstudio /home/rstudio
