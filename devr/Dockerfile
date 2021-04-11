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

RUN wget http://mirror.ctan.org/systems/texlive/tlnet/update-tlmgr-latest.sh \
  && sh update-tlmgr-latest.sh -- --upgrade \
  && tlmgr update --self \
  && tlmgr install collection-fontsrecommended

RUN install2.r --repos http://cran.r-project.org \
  tinytest \
  lintr \
  rhub \
  data.table \
  sparklyr

RUN Rscript -e \
  'remotes::install_version("roxygen2", "7.1.1", upgrade = "never")'

RUN Rscript -e \
  'sparklyr::spark_install("3.0")'

COPY .profile /home/rstudio/.profile
COPY .raliases /home/rstudio/.raliases
COPY rstudio-prefs.json /home/rstudio/.config/rstudio/rstudio-prefs.json
RUN chown -R rstudio:rstudio /home/rstudio
