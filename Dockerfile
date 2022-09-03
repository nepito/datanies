FROM islasgeci/base:latest
COPY . /workdir
RUN Rscript -e "install.packages(c('comprehenr', 'rjson'), repos='http://cran.rstudio.com')"
