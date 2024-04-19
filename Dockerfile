FROM rocker/rstudio:4.3.3


COPY scripts /rockr_scripts

RUN /rockr_scripts/install_tidyverse.sh
RUN /rockr_scripts/install_verse.sh

RUN install2.r --error checkmate posterior
RUN install2.r --repos https://mc-stan.org/r-packages/ --error cmdstanr
RUN install2.r --error \
    logger patchwork

USER rstudio
WORKDIR /home/rstudio
RUN Rscript /rockr_scripts/install_cmdstan.R
USER root
